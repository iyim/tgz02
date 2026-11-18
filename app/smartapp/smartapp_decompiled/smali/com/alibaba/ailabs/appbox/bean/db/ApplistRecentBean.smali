.class public Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;
.super Ljava/lang/Object;
.source "ApplistRecentBean.java"


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "applist_recent"
.end annotation


# instance fields
.field actionUrl:Ljava/lang/String;
    .annotation build Landroidx/room/PrimaryKey;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field appid:Ljava/lang/String;

.field busniessType:Ljava/lang/String;

.field icon:Ljava/lang/String;

.field name:Ljava/lang/String;

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Landroidx/room/Ignore;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->name:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->actionUrl:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->packageName:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->icon:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActionUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->actionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getBusniessType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->busniessType:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->actionUrl:Ljava/lang/String;

    return-void
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->appid:Ljava/lang/String;

    return-void
.end method

.method public setBusniessType(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->busniessType:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->icon:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/db/ApplistRecentBean;->packageName:Ljava/lang/String;

    return-void
.end method
