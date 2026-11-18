.class public Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;
.super Ljava/lang/Object;
.source "UltronEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/event/base/UltronEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RuntimeContext"
.end annotation


# instance fields
.field private mRequestMtopResp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestResp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->mRequestResp:Ljava/util/Map;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->mRequestMtopResp:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->mRequestResp:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;)Ljava/util/Map;
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->mRequestMtopResp:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final getRequestMtopResp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/domain/MtopResponse;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->mRequestMtopResp:Ljava/util/Map;

    return-object v0
.end method

.method public final getRequestResp()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONObject;",
            ">;"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/base/UltronEvent$RuntimeContext;->mRequestResp:Ljava/util/Map;

    return-object v0
.end method
