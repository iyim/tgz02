.class public Lcom/alibaba/ailabs/genie/time/db/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final appEventDao:Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

.field private final appEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final childModelEventDao:Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;

.field private final childModelEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 36
    const-class p1, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->appEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 37
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->appEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 39
    const-class p1, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->childModelEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 40
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->childModelEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 42
    new-instance p1, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->appEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/ailabs/genie/time/db/AppEventDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/alibaba/ailabs/genie/time/db/DaoSession;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->appEventDao:Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    .line 43
    new-instance p1, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->childModelEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/alibaba/ailabs/genie/time/db/DaoSession;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->childModelEventDao:Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;

    .line 45
    const-class p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/AppEvent;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->appEventDao:Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 46
    const-class p1, Lcom/alibaba/ailabs/genie/time/statistics/bean/ChildModelEvent;

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->childModelEventDao:Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->appEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->childModelEventDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getAppEventDao()Lcom/alibaba/ailabs/genie/time/db/AppEventDao;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->appEventDao:Lcom/alibaba/ailabs/genie/time/db/AppEventDao;

    return-object v0
.end method

.method public getChildModelEventDao()Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/time/db/DaoSession;->childModelEventDao:Lcom/alibaba/ailabs/genie/time/db/ChildModelEventDao;

    return-object v0
.end method
