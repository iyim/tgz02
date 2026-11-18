.class Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;
.super Ljava/lang/Object;
.source "CircleTextProgressbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 352
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 353
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$2;->$SwitchMap$com$alibaba$ailabs$genie$globalsearch$widgets$CircleTextProgressbar$ProgressType:[I

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$000(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$ProgressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$102(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;I)I

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$102(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;I)I

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_3

    .line 362
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$200(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$300(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$OnCountdownProgressListener;->onProgress(II)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->invalidate()V

    .line 365
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$400(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v2}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$500(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar$1;->this$0:Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$100(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$600(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;->access$102(Lcom/alibaba/ailabs/genie/globalsearch/widgets/CircleTextProgressbar;I)I

    :goto_1
    return-void
.end method
