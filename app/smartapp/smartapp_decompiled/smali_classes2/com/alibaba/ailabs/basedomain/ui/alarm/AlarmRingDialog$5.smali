.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$5;
.super Ljava/lang/Object;
.source "AlarmRingDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmClockManager$IPlayCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->onWindowFocusChanged(Z)V
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

    .line 303
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1

    const-string p1, "AlarmRingDialog"

    const-string v0, "Alarm ring play complete, release wake lock ?"

    .line 306
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->getInstance()Lcom/alibaba/ailabs/basedomain/common/MediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/common/MediaManager;->isRing()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Alarm ring play complete, release wake lock"

    .line 308
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$5;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$700(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPlayCompleteListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
