.class public final Lcom/alibaba/genie/waft/gcs/network/api/Response;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;,
        Lcom/alibaba/genie/waft/gcs/network/api/Response$Header;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/genie/waft/gcs/network/api/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/genie/waft/gcs/network/api/Response$a;

    invoke-direct {v0}, Lcom/alibaba/genie/waft/gcs/network/api/Response$a;-><init>()V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->b:[B

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->d:Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    .line 13
    const-class v0, Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/waft/gcs/network/api/Request;

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->c:Ljava/util/Map;

    .line 15
    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;[BLcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)V
    .locals 1
    .param p1    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    .line 3
    iput-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->b:[B

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->c:Ljava/util/Map;

    .line 6
    sget-object p2, Lcom/alibaba/genie/waft/gcs/network/api/Request$Header;->c:Ljava/lang/String;

    const-string v0, "Content-Type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object p3, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->d:Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    return-void
.end method

.method public static a(Lcom/alibaba/genie/waft/gcs/network/api/Request;Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)Lcom/alibaba/genie/waft/gcs/network/api/Response;
    .locals 2
    .param p0    # Lcom/alibaba/genie/waft/gcs/network/api/Request;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/alibaba/genie/waft/gcs/network/api/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/alibaba/genie/waft/gcs/network/api/Response;-><init>(Lcom/alibaba/genie/waft/gcs/network/api/Request;[BLcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->d:Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->b:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->d:Lcom/alibaba/genie/waft/gcs/network/api/Response$NetworkError;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 3
    iget-object v0, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->a:Lcom/alibaba/genie/waft/gcs/network/api/Request;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lcom/alibaba/genie/waft/gcs/network/api/Response;->c:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    return-void
.end method
