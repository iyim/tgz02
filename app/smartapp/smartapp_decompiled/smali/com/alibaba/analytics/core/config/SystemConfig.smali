.class public Lcom/alibaba/analytics/core/config/SystemConfig;
.super Lcom/alibaba/analytics/core/db/Entity;
.source "SystemConfig.java"


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "utap_system"
.end annotation


# instance fields
.field protected key:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "key"
    .end annotation
.end field

.field protected value:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/alibaba/analytics/core/db/Entity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
