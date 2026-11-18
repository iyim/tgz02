.class public Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;
.super Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;
.source "UltronProtocol.java"


# instance fields
.field public container:Lcom/alibaba/android/ultron/engine/protocol/Container;

.field public data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/engine/protocol/Component;",
            ">;"
        }
    .end annotation
.end field

.field public endpoint:Lcom/alibaba/android/ultron/engine/protocol/EndPoint;

.field public global:Lcom/alibaba/android/ultron/engine/protocol/Global;

.field public hierarchy:Lcom/alibaba/android/ultron/engine/protocol/Hierarchy;

.field public linkage:Lcom/alibaba/android/ultron/engine/protocol/Linkage;

.field public reload:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/alibaba/android/ultron/engine/protocol/BaseProtocol;-><init>()V

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/ultron/engine/protocol/UltronProtocol;->reload:Ljava/lang/Boolean;

    return-void
.end method
