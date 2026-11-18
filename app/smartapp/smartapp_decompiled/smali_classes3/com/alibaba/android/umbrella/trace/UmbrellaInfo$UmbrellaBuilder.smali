.class public final Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;
.super Ljava/lang/Object;
.source "UmbrellaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UmbrellaBuilder"
.end annotation


# instance fields
.field private args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private childBizName:Ljava/lang/String;

.field private featureType:Ljava/lang/String;

.field private invokePage:Ljava/lang/String;

.field private invokePageUrl:Ljava/lang/String;

.field private mainBizName:Ljava/lang/String;

.field private samplingRate:Ljava/lang/String;

.field private tagId:Ljava/lang/String;

.field private tagVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->tagId:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->tagVersion:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->featureType:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->mainBizName:Ljava/lang/String;

    .line 93
    iput-object p5, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->childBizName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;
    .locals 2

    .line 128
    new-instance v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;-><init>(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$1;)V

    .line 129
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->tagId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->tagId:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->tagVersion:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->tagVersion:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->mainBizName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->mainBizName:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->childBizName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->childBizName:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->featureType:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->featureType:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->samplingRate:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->samplingRate:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->invokePage:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->invokePage:Ljava/lang/String;

    .line 136
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->invokePageUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->invokePageUrl:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->args:Ljava/util/Map;

    iput-object v1, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    return-object v0
.end method

.method public setInvokePage(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->invokePage:Ljava/lang/String;

    return-object p0
.end method

.method public setInvokePageUrl(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->invokePageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setParams(Ljava/util/Map;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->args:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->args:Ljava/util/Map;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->args:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public setSamplingRate(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->samplingRate:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo$UmbrellaBuilder;->tagVersion:Ljava/lang/String;

    return-object p0
.end method
