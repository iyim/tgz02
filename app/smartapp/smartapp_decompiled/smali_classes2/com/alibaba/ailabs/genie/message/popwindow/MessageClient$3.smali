.class Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;
.super Ljava/lang/Object;
.source "MessageClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 252
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getActionValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$300(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)V

    .line 254
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$400(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->val$buttonRight:Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/message/popwindow/bean/NotificationBean$ScreenButton;->getActionValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/ailabs/genie/router/GenieAIRouter;->open(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 255
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->access$500(Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "right_button_click"

    const-string v1, "push_message"

    const-string v2, "a1z3lt.b52382798.c1611653107264.d1611653107264"

    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/ailabs/genie/message/utils/CommonUtil;->eventUT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient$3;->this$0:Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/message/popwindow/MessageClient;->dismiss()V

    return-void
.end method
