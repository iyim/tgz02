.class public Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
.super Ljava/lang/Object;
.source "UtRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UtRequestBuilder"
.end annotation


# instance fields
.field private appKey:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private eventId:I

.field private eventName:Ljava/lang/String;

.field private exposureName:Ljava/lang/String;

.field private extDataOne:Ljava/lang/String;

.field private extDataThird:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private extDataThree:Ljava/lang/String;

.field private extDataTwo:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private overTimeException:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private pageName:Ljava/lang/String;

.field private paramsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private referPage:Ljava/lang/String;

.field private spm:Ljava/lang/String;

.field private throwableInfo:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->pageName:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->packageName:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->channel:Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->eventId:I

    .line 81
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->authCode:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->method:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->appKey:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->eventName:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->spm:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->overTimeException:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->exposureName:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->referPage:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataOne:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataTwo:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataThird:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataThree:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addAppKey(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public addEventId(I)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 125
    iput p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->eventId:I

    return-object p0
.end method

.method public addEventName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->eventName:Ljava/lang/String;

    return-object p0
.end method

.method public addExposureName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->exposureName:Ljava/lang/String;

    return-object p0
.end method

.method public addExtDataOne(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataOne:Ljava/lang/String;

    return-object p0
.end method

.method public addExtDataThird(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataThird:Ljava/lang/String;

    return-object p0
.end method

.method public addExtDataThree(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataThree:Ljava/lang/String;

    return-object p0
.end method

.method public addExtDataTwo(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataTwo:Ljava/lang/String;

    return-object p0
.end method

.method public addOverTimeException(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->overTimeException:Ljava/lang/String;

    return-object p0
.end method

.method public addPageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->pageName:Ljava/lang/String;

    return-object p0
.end method

.method public addParamsMap(Ljava/util/HashMap;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->paramsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public addReferPage(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->referPage:Ljava/lang/String;

    return-object p0
.end method

.method public addSpm(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->spm:Ljava/lang/String;

    return-object p0
.end method

.method public addThrowableInfo(Ljava/lang/Throwable;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->throwableInfo:Ljava/lang/Throwable;

    return-object p0
.end method

.method public create()Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;
    .locals 2

    .line 200
    new-instance v0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->method:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$002(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->appKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$102(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->pageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$202(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$302(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->eventName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$402(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->eventId:I

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$502(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;I)I

    .line 207
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->spm:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$602(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->throwableInfo:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$702(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 209
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->overTimeException:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$802(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->exposureName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$902(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->paramsMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1002(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 212
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataThird:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1102(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataThree:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1202(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 214
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataTwo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1302(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->extDataOne:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1402(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->referPage:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1502(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->channel:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1602(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->authCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->access$1702(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->method:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->authCode:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->channel:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->method:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;->packageName:Ljava/lang/String;

    return-object p0
.end method
