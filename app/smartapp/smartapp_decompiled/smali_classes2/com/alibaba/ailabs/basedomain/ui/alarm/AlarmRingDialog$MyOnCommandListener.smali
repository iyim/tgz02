.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;
.super Ljava/lang/Object;
.source "AlarmRingDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/ASRManager$IOnCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyOnCommandListener"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;",
            ">;)V"
        }
    .end annotation

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 651
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AlarmRingDialog"

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 654
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, -0x61441895

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v2, :cond_3

    const v2, -0x17df559c

    if-eq v0, v2, :cond_2

    const v1, 0x49535d6

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "AdjustUpVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    const-string v0, "AdjustDownVolume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    :cond_4
    :goto_0
    if-eqz p2, :cond_7

    if-eq p2, v4, :cond_6

    if-eq p2, v3, :cond_5

    goto :goto_1

    .line 662
    :cond_5
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$1300(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    goto :goto_1

    .line 659
    :cond_6
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$1200(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    goto :goto_1

    .line 656
    :cond_7
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$MyOnCommandListener;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$1100(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    :goto_1
    return v4

    :cond_8
    :goto_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCommandListener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
