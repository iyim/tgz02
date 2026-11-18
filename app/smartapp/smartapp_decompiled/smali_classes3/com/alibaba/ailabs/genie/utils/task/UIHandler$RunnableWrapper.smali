.class Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/task/UIHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RunnableWrapper"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;->mTarget:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/task/UIHandler$RunnableWrapper;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
