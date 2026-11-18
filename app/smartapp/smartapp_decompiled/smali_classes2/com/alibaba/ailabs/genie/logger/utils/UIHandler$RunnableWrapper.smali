.class Lcom/alibaba/ailabs/genie/logger/utils/UIHandler$RunnableWrapper;
.super Ljava/lang/Object;
.source "UIHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/logger/utils/UIHandler;
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/utils/UIHandler$RunnableWrapper;->mTarget:Ljava/lang/Runnable;

    .line 21
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/logger/utils/UIHandler$RunnableWrapper;->mTarget:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/logger/utils/Check;->d(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/UIHandler$RunnableWrapper;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
