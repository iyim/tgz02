.class public Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;
.super Ljava/lang/Object;
.source "DataBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartCareBean"
.end annotation


# instance fields
.field private enable:Ljava/lang/String;

.field private pushPerDay:Ljava/lang/String;

.field private pushPerWeek:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getEnable()Ljava/lang/String;
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->enable:Ljava/lang/String;

    return-object v0
.end method

.method public getPushPerDay()Ljava/lang/String;
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->pushPerDay:Ljava/lang/String;

    return-object v0
.end method

.method public getPushPerWeek()Ljava/lang/String;
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->pushPerWeek:Ljava/lang/String;

    return-object v0
.end method

.method public setEnable(Ljava/lang/String;)V
    .locals 0

    .line 897
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->enable:Ljava/lang/String;

    return-void
.end method

.method public setPushPerDay(Ljava/lang/String;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->pushPerDay:Ljava/lang/String;

    return-void
.end method

.method public setPushPerWeek(Ljava/lang/String;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/settingmode/mtop/DataBean$SmartCareBean;->pushPerWeek:Ljava/lang/String;

    return-void
.end method
