.class public Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig;
.super Ljava/lang/Object;
.source "GenieMtopServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ServiceType;,
        Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;
    }
.end annotation


# static fields
.field public static final HOST_FAAS:Ljava/lang/String; = "mtop.alibaba.aicloud.distributedappsupport.faas.invoke"

.field public static final HOST_FAAS_CC:Ljava/lang/String; = "mtop.alibaba.aicloud.distributedappsupport.faas.invokeForTurando"

.field public static final HOST_HSF:Ljava/lang/String; = "mtop.alibaba.aicloud.distributedappsupport.hsf.invoke"

.field public static final HOST_HSF_CC:Ljava/lang/String; = "mtop.alibaba.aicloud.distributedappsupport.hsf.invokeForTurandot"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
