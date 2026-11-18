.class final Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool$1;
.super Ljava/lang/Object;
.source "FileTaskPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool;->submit(Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;)Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool$1;->val$task:Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/taskpool/FileTaskPool$1;->val$task:Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/taskpool/CancelableTask;->Run()V

    return-void
.end method
