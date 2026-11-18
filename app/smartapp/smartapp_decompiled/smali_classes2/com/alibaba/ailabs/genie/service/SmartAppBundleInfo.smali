.class public Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;
.super Ljava/lang/Object;
.source "SmartAppBundleInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->packageName:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->appName:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionName:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;-><init>(Landroid/os/Parcel;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 54
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->appName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget p2, p0, Lcom/alibaba/ailabs/genie/service/SmartAppBundleInfo;->versionCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
