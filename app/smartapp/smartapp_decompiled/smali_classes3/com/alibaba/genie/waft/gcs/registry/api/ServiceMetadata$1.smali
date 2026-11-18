.class final Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata$1;
.super Ljava/lang/Object;
.source "ServiceMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;
    .locals 1

    .line 57
    new-instance v0, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;
    .locals 0

    .line 62
    new-array p1, p1, [Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata$1;->newArray(I)[Lcom/alibaba/genie/waft/gcs/registry/api/ServiceMetadata;

    move-result-object p1

    return-object p1
.end method
