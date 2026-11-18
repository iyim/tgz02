.class public Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;
.super Ljava/lang/Object;
.source "UmbrellaInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;
    }
.end annotation


# instance fields
.field public args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public childBizName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "sceneName"
    .end annotation
.end field

.field public featureType:Ljava/lang/String;

.field public invokePage:Ljava/lang/String;

.field public invokePageUrl:Ljava/lang/String;

.field public mainBizName:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "bizName"
    .end annotation
.end field

.field public samplingRate:Ljava/lang/String;

.field public tagId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "serviceId"
    .end annotation
.end field

.field public tagVersion:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "version"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public toJsonString()Ljava/lang/String;
    .locals 1

    .line 74
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
