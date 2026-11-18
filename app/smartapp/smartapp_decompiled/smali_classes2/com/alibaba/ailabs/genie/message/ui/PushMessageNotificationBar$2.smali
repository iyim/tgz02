.class Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$2;
.super Ljava/lang/Object;
.source "PushMessageNotificationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->access$100(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->access$100(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$200(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x12c

    .line 88
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/message/utils/ClickCheckUtil;->isFastClick(J)Z

    move-result p1

    if-nez p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->access$100(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->access$200(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;->onRightOpenrationClick()V

    :cond_0
    return-void
.end method
