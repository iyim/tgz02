.class public Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;
.super Ljava/lang/Object;
.source "EyeModeSettingBean.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# instance fields
.field private enable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public isEnable()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/data/bean/EyeModeSettingBean;->enable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
