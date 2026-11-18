.class final Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager$1;
.super Ljava/lang/Object;
.source "GenieThreadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;)Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager$1;->val$task:Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager$1;->val$task:Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/utils/task/CancelableTask;->Run()V

    return-void
.end method
