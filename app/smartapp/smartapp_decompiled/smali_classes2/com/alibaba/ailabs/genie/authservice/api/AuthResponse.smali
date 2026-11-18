.class public Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;
.super Ljava/lang/Object;
.source "AuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

.field private errorCode:Ljava/lang/String;

.field private errorMsg:Ljava/lang/String;

.field private success:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->success:Z

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorMsg:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorCode:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->data:Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->success:Z

    .line 31
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorMsg:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorCode:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->data:Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getData()Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->data:Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->success:Z

    return v0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->data:Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->success:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthResponse{success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->data:Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->success:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 95
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse;->data:Lcom/alibaba/ailabs/genie/authservice/api/AuthResponse$AuthResponseData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
