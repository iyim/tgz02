.class Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$3;
.super Ljava/lang/Object;
.source "AlarmRingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 230
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "user touch close alarm btn"

    const-string v0, "AlarmRingDialog"

    .line 233
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$400(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmUt;->alarmFinishReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog$3;->this$0:Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;

    const-string v0, "user_touch"

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;->access$500(Lcom/alibaba/ailabs/basedomain/ui/alarm/AlarmRingDialog;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClickListener"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
