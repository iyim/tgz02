.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$2;
.super Ljava/lang/Object;
.source "AlarmRingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update time tv, in Thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmRingDialog"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {v1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpdateTimeRunnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
