#include "../common/plugin.h"
#include <string>
#include <vector>
#include <pthread.h>

#ifndef DIALOG_JS_H
#define DIALOG_JS_H

namespace webworks {

class Dialog : public JSExt
{
public:
    Dialog(const std::string& id);
    virtual ~Dialog() {}
    virtual std::string InvokeMethod(const std::string& command);
    virtual bool CanDelete() { return true; }
    void NotifyEvent(std::string& event);
    void StartThread();
private:
    pthread_t m_thread;
    std::string m_message;
    std::vector<std::string> m_buttons;
    std::string m_id;
    
};

} // namespace webworks

#endif // DIALOG_JS_H
