.class public Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;
.super Ljava/lang/Object;
.source "MusicConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;
    }
.end annotation


# instance fields
.field private backList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shortApps:Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;

.field private stickyProcesss:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBackList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->backList:Ljava/util/Set;

    return-object v0
.end method

.method public getShortApps()Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->shortApps:Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;

    return-object v0
.end method

.method public getStickyProcesss()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->stickyProcesss:Ljava/util/Set;

    return-object v0
.end method

.method public matchShortApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->shortApps:Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->getActivitys()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->shortApps:Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->getActivitys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    .line 50
    :cond_1
    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->shortApps:Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->getPackages()Ljava/util/Set;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->shortApps:Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;->getPackages()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public matchStickyProcess(Ljava/lang/String;)Z
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->stickyProcesss:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public setBackList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->backList:Ljava/util/Set;

    return-void
.end method

.method public setShortApps(Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->shortApps:Lcom/alibaba/ailabs/comm/task/ex/MusicConfig$ConfigApps;

    return-void
.end method

.method public setStickyProcesss(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/comm/task/ex/MusicConfig;->stickyProcesss:Ljava/util/Set;

    return-void
.end method
