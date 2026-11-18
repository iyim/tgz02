.class public Lcom/alibaba/android/ultron/engine/protocol/Data;
.super Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;
.source "Data.java"


# instance fields
.field public components:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/protocol/Component;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/protocol/Component;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/android/ultron/engine/protocol/Data;->components:Ljava/util/Map;

    return-void
.end method

.method public static of(Ljava/util/Map;)Lcom/alibaba/android/ultron/engine/protocol/Data;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/protocol/Component;",
            ">;)",
            "Lcom/alibaba/android/ultron/engine/protocol/Data;"
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/alibaba/android/ultron/engine/protocol/Data;

    invoke-direct {v0, p0}, Lcom/alibaba/android/ultron/engine/protocol/Data;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
