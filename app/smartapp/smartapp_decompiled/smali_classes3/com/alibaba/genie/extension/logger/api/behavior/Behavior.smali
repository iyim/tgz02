.class public Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;
.super Ljava/lang/Object;
.source "Behavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$Builder;
    }
.end annotation


# instance fields
.field private params:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preViewId:Ljava/lang/String;

.field private trackId:Ljava/lang/String;

.field private viewId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->params:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;)Ljava/util/Map;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->params:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$102(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->params:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->preViewId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->trackId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->viewId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->params:Ljava/util/Map;

    return-object v0
.end method

.method public getPreViewId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->preViewId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewId()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/genie/extension/logger/api/behavior/Behavior;->viewId:Ljava/lang/String;

    return-object v0
.end method
