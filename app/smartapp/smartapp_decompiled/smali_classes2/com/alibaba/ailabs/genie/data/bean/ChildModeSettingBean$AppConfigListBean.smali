.class public Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;
.super Ljava/lang/Object;
.source "ChildModeSettingBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppConfigListBean"
.end annotation


# instance fields
.field private extend:Ljava/lang/Object;

.field private identify:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private usedTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getExtend()Ljava/lang/Object;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->extend:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdentify()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->identify:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUsedTime()Ljava/lang/String;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->usedTime:Ljava/lang/String;

    return-object v0
.end method

.method public setExtend(Ljava/lang/Object;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->extend:Ljava/lang/Object;

    return-void
.end method

.method public setIdentify(Ljava/lang/String;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->identify:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->type:Ljava/lang/String;

    return-void
.end method

.method public setUsedTime(Ljava/lang/String;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean$AppConfigListBean;->usedTime:Ljava/lang/String;

    return-void
.end method
