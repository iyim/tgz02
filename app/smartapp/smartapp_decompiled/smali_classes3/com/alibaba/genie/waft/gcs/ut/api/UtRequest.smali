.class public final Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;
.super Ljava/lang/Object;
.source "UtRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$UtRequestBuilder;,
        Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$Method;,
        Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$MethodType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final NULL_STRING:Ljava/lang/String; = "null"


# instance fields
.field private appKey:Ljava/lang/String;

.field private authCode:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private eventId:I

.field private eventName:Ljava/lang/String;

.field private exposureName:Ljava/lang/String;

.field private extDataOne:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private extDataThird:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private extDataThree:Ljava/lang/String;

.field private extDataTwo:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .line 416
    new-instance v0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$1;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest$1;-><init>()V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "customHit"

    .line 72
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->mMethod:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "customHit"

    .line 72
    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->mMethod:Ljava/lang/String;

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->pageName:Ljava/lang/String;

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->packageName:Ljava/lang/String;

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->appKey:Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventId:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->channel:Ljava/lang/String;

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->authCode:Ljava/lang/String;

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->spm:Ljava/lang/String;

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->throwableInfo:Ljava/lang/Throwable;

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->overTimeException:Ljava/lang/String;

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->exposureName:Ljava/lang/String;

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    .line 409
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->paramsMap:Ljava/util/HashMap;

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    .line 411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataTwo:Ljava/lang/String;

    .line 412
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->mMethod:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->mMethod:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->paramsMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->appKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThree:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataTwo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->channel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->authCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->pageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventId:I

    return p1
.end method

.method static synthetic access$602(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->spm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->throwableInfo:Ljava/lang/Throwable;

    return-object p1
.end method

.method static synthetic access$802(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->overTimeException:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->exposureName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthCode()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->authCode:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()I
    .locals 1

    .line 344
    iget v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventId:I

    return v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    return-object v0
.end method

.method public getExposureName()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->exposureName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtDataOne()Ljava/lang/String;
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    return-object v0
.end method

.method public getExtDataThird()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    return-object v0
.end method

.method public getExtDataThree()Ljava/lang/String;
    .locals 2

    .line 315
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThree:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThree:Ljava/lang/String;

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    return-object v0

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThree:Ljava/lang/String;

    return-object v0
.end method

.method public getExtDataTwo()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataTwo:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getParamsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->paramsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReferPage()Ljava/lang/String;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    return-object v0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    return-object v0
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->spm:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableInfo()Ljava/lang/Throwable;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->throwableInfo:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getmMethod()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthCode(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->authCode:Ljava/lang/String;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->channel:Ljava/lang/String;

    return-void
.end method

.method public setExtDataOne(Ljava/lang/String;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    return-void
.end method

.method public setExtDataThird(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    return-void
.end method

.method public setExtDataThree(Ljava/lang/String;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThree:Ljava/lang/String;

    return-void
.end method

.method public setExtDataTwo(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataTwo:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setParamsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->paramsMap:Ljava/util/HashMap;

    return-void
.end method

.method public setReferPage(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtRequest{pageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->pageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", channel=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->channel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", authCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->authCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", eventName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", spm=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->spm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", throwableInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->throwableInfo:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", overTimeException=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->overTimeException:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", exposureName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->exposureName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", referPage=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", paramsMap="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->paramsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", extDataOne=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extDataTwo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataTwo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extDataThird=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extDataThree=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThree:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mMethod=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 377
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->pageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 378
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->appKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    iget p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->channel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 382
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->authCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 383
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->eventName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->spm:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 385
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->throwableInfo:Ljava/lang/Throwable;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 386
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->overTimeException:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 387
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->exposureName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 388
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->referPage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->paramsMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 390
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataOne:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataTwo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->extDataThird:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/ut/api/UtRequest;->mMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
