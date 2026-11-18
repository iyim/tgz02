.class public Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;
.super Ljava/lang/Object;
.source "ServiceMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_DEFAULT:Ljava/lang/String; = "1.0"


# instance fields
.field private isFreeze:Z

.field private mHostProvider:Ljava/lang/String;

.field private mPkg:Ljava/lang/String;

.field private mProcessName:Ljava/lang/String;

.field private mServiceApi:Ljava/lang/String;

.field private mServiceName:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata$1;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata$1;-><init>()V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze:Z

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mPkg:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mProcessName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mHostProvider:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceApi:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v5, "1.0"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 31
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mPkg:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mProcessName:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mHostProvider:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceApi:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceName:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 118
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 119
    :cond_1
    check-cast p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    .line 120
    iget-boolean v2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze:Z

    iget-boolean v3, p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mPkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mPkg:Ljava/lang/String;

    .line 121
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mProcessName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mProcessName:Ljava/lang/String;

    .line 122
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mHostProvider:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mHostProvider:Ljava/lang/String;

    .line 123
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceApi:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceApi:Ljava/lang/String;

    .line 124
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceName:Ljava/lang/String;

    .line 125
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mVersion:Ljava/lang/String;

    .line 126
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getHostProvider()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mHostProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceApi()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceApi:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    .line 131
    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mPkg:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mProcessName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mHostProvider:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceApi:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mVersion:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isFreeze()Z
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze:Z

    return v0
.end method

.method public setFreeze(Z)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze:Z

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    iget-boolean p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->isFreeze:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 107
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mHostProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceApi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;->mVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
