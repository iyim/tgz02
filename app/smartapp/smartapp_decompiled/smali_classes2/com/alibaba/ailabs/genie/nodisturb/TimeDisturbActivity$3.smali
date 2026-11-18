.class Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$3;
.super Ljava/lang/Object;
.source "TimeDisturbActivity.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$102(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;I)I

    .line 118
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity$3;->this$0:Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;

    invoke-static {p1, p3}, Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;->access$202(Lcom/alibaba/ailabs/genie/nodisturb/TimeDisturbActivity;I)I

    return-void
.end method
