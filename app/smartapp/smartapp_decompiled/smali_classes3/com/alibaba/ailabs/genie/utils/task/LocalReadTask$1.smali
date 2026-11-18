.class Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask$1;
.super Ljava/lang/Object;
.source "LocalReadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask$1;->this$0:Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask$1;->this$0:Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/task/LocalReadTask;->runReading()V

    return-void
.end method
