.class public Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;
.super Ljava/lang/Object;
.source "AuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthResponseData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private apiAccessToken:Ljava/lang/String;

.field private grantedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unauthorized:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->apiAccessToken:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->grantedPermissions:Ljava/util/List;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->unauthorized:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->apiAccessToken:Ljava/lang/String;

    .line 122
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->grantedPermissions:Ljava/util/List;

    .line 123
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->unauthorized:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getApiAccessToken()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->apiAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->grantedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getUnauthorized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->unauthorized:Ljava/util/List;

    return-object v0
.end method

.method public setApiAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->apiAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setGrantedPermissions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 157
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->grantedPermissions:Ljava/util/List;

    return-void
.end method

.method public setUnauthorized(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->unauthorized:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponseData{apiAccessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->apiAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", grantedPermissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->grantedPermissions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unauthorized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->unauthorized:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 175
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->apiAccessToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->grantedPermissions:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 177
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;->unauthorized:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
