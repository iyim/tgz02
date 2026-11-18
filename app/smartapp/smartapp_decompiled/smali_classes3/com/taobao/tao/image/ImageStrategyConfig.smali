.class public Lcom/taobao/tao/image/ImageStrategyConfig;
.super Ljava/lang/Object;
.source "ImageStrategyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/tao/image/ImageStrategyConfig$Builder;,
        Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;
    }
.end annotation


# static fields
.field public static final BALA:Ljava/lang/String; = "bala"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DETAIL:Ljava/lang/String; = "detail"

.field public static final HOME:Ljava/lang/String; = "home"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final SHOP:Ljava/lang/String; = "shop"

.field public static final TBCHANNEL:Ljava/lang/String; = "tbchannel"

.field public static final WEAPP:Ljava/lang/String; = "weapp"

.field public static final WEAPPSHARPEN:Ljava/lang/String; = "weappsharpen"

.field public static final WEITAO:Ljava/lang/String; = "weitao"


# instance fields
.field bizId:I

.field bizIdStr:Ljava/lang/String;

.field bizName:Ljava/lang/String;

.field cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

.field enabledLevelModel:Ljava/lang/Boolean;

.field enabledMergeDomain:Ljava/lang/Boolean;

.field enabledQuality:Ljava/lang/Boolean;

.field enabledSharpen:Ljava/lang/Boolean;

.field enabledWebP:Ljava/lang/Boolean;

.field finalHeight:I

.field finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field finalWidth:I

.field forcedWebPOn:Z

.field sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

.field skipped:Z


# direct methods
.method private constructor <init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;)V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizName:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizName:Ljava/lang/String;

    .line 59
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizIdStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizIdStr:Ljava/lang/String;

    .line 60
    iget v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->bizId:I

    iput v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizId:I

    .line 61
    iget-boolean v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->skipped:Z

    iput-boolean v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->skipped:Z

    .line 62
    iget v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalWidth:I

    iput v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalWidth:I

    .line 63
    iget v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalHeight:I

    iput v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalHeight:I

    .line 64
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 65
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledWebP:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledWebP:Ljava/lang/Boolean;

    .line 66
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledQuality:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledQuality:Ljava/lang/Boolean;

    .line 67
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledSharpen:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledSharpen:Ljava/lang/Boolean;

    .line 68
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledMergeDomain:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledMergeDomain:Ljava/lang/Boolean;

    .line 69
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->enabledLevelModel:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledLevelModel:Ljava/lang/Boolean;

    .line 70
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    iput-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 71
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->forcedWebPOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->forcedWebPOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->forcedWebPOn:Z

    .line 74
    :cond_0
    iget-object p1, p1, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    .line 75
    iget-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-nez p1, :cond_1

    .line 76
    sget-object p1, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->ALL_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    iput-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    goto :goto_0

    .line 77
    :cond_1
    sget-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->WIDTH_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    const/4 v1, 0x0

    const/16 v2, 0x2710

    if-ne p1, v0, :cond_2

    .line 78
    iput v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalHeight:I

    .line 79
    iput v1, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalWidth:I

    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    sget-object v0, Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;->HEIGHT_LIMIT:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    if-ne p1, v0, :cond_3

    .line 81
    iput v1, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalHeight:I

    .line 82
    iput v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalWidth:I

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;Lcom/taobao/tao/image/ImageStrategyConfig$1;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig;-><init>(Lcom/taobao/tao/image/ImageStrategyConfig$Builder;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static newBuilderWithName(Ljava/lang/String;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 2

    .line 34
    new-instance v0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static newBuilderWithName(Ljava/lang/String;I)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 1

    .line 30
    new-instance v0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-direct {v0, p0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static newBuilderWithName(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/tao/image/ImageStrategyConfig$Builder;
    .locals 1

    .line 38
    new-instance v0, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;

    invoke-direct {v0, p0, p1}, Lcom/taobao/tao/image/ImageStrategyConfig$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getBizId()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizId:I

    return v0
.end method

.method public getBizIdStr()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizIdStr:Ljava/lang/String;

    return-object v0
.end method

.method public getCutType()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-object v0
.end method

.method public getFinalHeight()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalHeight:I

    return v0
.end method

.method public getFinalImageQuality()Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-object v0
.end method

.method public getFinalWidth()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalWidth:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizName:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeLimitType()Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    return-object v0
.end method

.method public isEnabledLevelModel()Ljava/lang/Boolean;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledLevelModel:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledMergeDomain()Ljava/lang/Boolean;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledMergeDomain:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledQuality()Ljava/lang/Boolean;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledQuality:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledSharpen()Ljava/lang/Boolean;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledSharpen:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isEnabledWebP()Ljava/lang/Boolean;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledWebP:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isForcedWebPOn()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->forcedWebPOn:Z

    return v0
.end method

.method public isSkipped()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->skipped:Z

    return v0
.end method

.method public report()Ljava/lang/String;
    .locals 3

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "ImageStrategyConfig@"

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bizName:"

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bizId:"

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "skipped:"

    .line 105
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->skipped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "finalWidth:"

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "finalHeight:"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cutType:"

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->cutType:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enabledWebP:"

    .line 109
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledWebP:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enabledQuality:"

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledQuality:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enabledSharpen:"

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledSharpen:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enabledMergeDomain:"

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledMergeDomain:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enabledLevelModel:"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->enabledLevelModel:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "finalImageQuality:"

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->finalImageQuality:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "forcedWebPOn:"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->forcedWebPOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sizeLimitType:"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->sizeLimitType:Lcom/taobao/tao/image/ImageStrategyConfig$SizeLimitType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 96
    iget v0, p0, Lcom/taobao/tao/image/ImageStrategyConfig;->bizId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
