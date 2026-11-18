.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->addWindow(Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

.field final synthetic val$buttonLeft:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

.field final synthetic val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->val$buttonLeft:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    iput-object p3, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeftOpenrationClick()V
    .locals 4

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->val$buttonLeft:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getActionValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$300(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    .line 231
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$400(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->val$buttonLeft:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getActionValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$500(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "left_button_click"

    const-string v2, "push_message"

    const-string v3, "a1z3lt.b52382798.c1611653194546.d1611653194546"

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismiss()V

    return-void
.end method

.method public onRightOpenrationClick()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getActionValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$300(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    .line 242
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$400(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getActionValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$500(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "right_button_click"

    const-string v2, "push_message"

    const-string v3, "a1z3lt.b52382798.c1611653107264.d1611653107264"

    invoke-static {v1, v2, v3, v0}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$2;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismiss()V

    return-void
.end method
