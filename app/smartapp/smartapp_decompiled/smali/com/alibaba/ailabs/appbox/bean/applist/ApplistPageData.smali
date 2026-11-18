.class public Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;
.super Ljava/lang/Object;
.source "ApplistPageData.java"


# instance fields
.field blackList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field preInstalledAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field

.field recommendAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBlackList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->blackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getPreInstalledAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->preInstalledAppList:Ljava/util/List;

    return-object v0
.end method

.method public getRecommendAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->recommendAppList:Ljava/util/List;

    return-object v0
.end method

.method public setBlackList(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->blackList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public setPreInstalledAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->preInstalledAppList:Ljava/util/List;

    return-void
.end method

.method public setRecommendAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/MarketAppItemBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/applist/ApplistPageData;->recommendAppList:Ljava/util/List;

    return-void
.end method
