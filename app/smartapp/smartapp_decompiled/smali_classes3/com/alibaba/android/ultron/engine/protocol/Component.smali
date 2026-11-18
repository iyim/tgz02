.class public Lcom/alibaba/android/ultron/engine/protocol/Component;
.super Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;
.source "Component.java"


# instance fields
.field public cardGroup:Ljava/lang/String;

.field public events:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/alibaba/android/ultron/engine/protocol/Event;",
            ">;>;"
        }
    .end annotation
.end field

.field public fields:Lcom/alibaba/fastjson/JSONObject;

.field public id:Ljava/lang/String;

.field public position:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public submit:Ljava/lang/Boolean;

.field public tag:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
