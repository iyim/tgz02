.class Lcom/alibaba/ailabs/geniesdk/AgisProvider$1;
.super Ljava/lang/Object;
.source "AgisProvider.java"

# interfaces
.implements Lcom/alibaba/ailabs/comm/task/listener/IGetPkgInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/AgisProvider;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/AgisProvider;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/AgisProvider;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/AgisProvider$1;->this$0:Lcom/alibaba/ailabs/geniesdk/AgisProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetVirtualPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getVirtualPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
