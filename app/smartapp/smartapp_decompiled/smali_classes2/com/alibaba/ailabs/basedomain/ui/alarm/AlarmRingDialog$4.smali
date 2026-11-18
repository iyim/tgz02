.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$4;
.super Ljava/lang/Object;
.source "AlarmRingDialog.java"

# interfaces
.implements Lcom/alibaba/ailabs/basedomain/common/ASRManager$OnAsrWakeUpListener;


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

    .line 282
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAsrWakeup()V
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$4;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$600(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAsrWakeUpListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
