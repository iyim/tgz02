.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NearbyWakeupBean"
.end annotation


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isValue()Z
    .locals 1

    .line 960
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;->value:Z

    return v0
.end method

.method public setValue(Z)V
    .locals 0

    .line 964
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$NearbyWakeupBean;->value:Z

    return-void
.end method
