.class public Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;
.super Lcom/alibaba/analytics/core/db/Entity;
.source "TimeStampEntity.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "timestamp_config"
.end annotation


# instance fields
.field public namespace:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "namespace"
    .end annotation
.end field

.field public timestamp:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;->namespace:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/alibaba/analytics/core/config/timestamp/TimeStampEntity;->timestamp:Ljava/lang/String;

    return-void
.end method
