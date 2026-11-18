.class Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;
.super Landroid/os/Handler;
.source "BinderUICtr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;Landroid/os/Looper;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderUICtr"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x7d0

    const/16 v4, 0x3e9

    if-ne v0, v4, :cond_6

    .line 55
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$000(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$100(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    const/4 v5, 0x0

    invoke-static {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$202(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;I)I

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1, v5}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$302(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;I)I

    .line 58
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->hideBindUI(Z)V

    const-string p1, "handleMessage isMemberType"

    .line 60
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$400(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "handleMessage content empty"

    .line 63
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->bindUser()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$400(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$400(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "block"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "handleMessage content block"

    .line 67
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$302(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;I)I

    goto :goto_0

    :cond_2
    const-string p1, "handleMessage content valid"

    .line 70
    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$302(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;I)I

    goto :goto_0

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$302(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;I)I

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$402(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$300(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", failCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$200(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$500(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 80
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$500(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$300(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setOnLine(I)V

    .line 82
    :cond_5
    invoke-virtual {p0, v4}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->removeMessages(I)V

    .line 83
    invoke-virtual {p0, v4, v2, v3}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 84
    :cond_6
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_8

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$000(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/AppUtils;->getTopPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "com.android.settings"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$600(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 88
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage ISNEEDSHOW mState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$300(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", content:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$400(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$400(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->showBindUI(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$500(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 91
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$500(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;->this$0:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->access$300(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setOnLine(I)V

    :cond_8
    :goto_1
    return-void
.end method
