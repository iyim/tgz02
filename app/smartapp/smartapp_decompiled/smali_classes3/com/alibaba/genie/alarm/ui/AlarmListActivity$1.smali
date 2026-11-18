.class Lcom/alibaba/genie/alarm/ui/AlarmListActivity$1;
.super Landroid/os/CountDownTimer;
.source "AlarmListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/ui/AlarmListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/ui/AlarmListActivity;JJ)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$1;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/genie/alarm/ui/AlarmListActivity$1;->this$0:Lcom/alibaba/genie/alarm/ui/AlarmListActivity;

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/ui/AlarmListActivity;->finish()V

    return-void
.end method

.method public onTick(J)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
