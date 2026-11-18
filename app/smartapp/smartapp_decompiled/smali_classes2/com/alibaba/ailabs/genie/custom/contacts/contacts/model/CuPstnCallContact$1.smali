.class final Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact$1;
.super Ljava/lang/Object;
.source "CuPstnCallContact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;
    .locals 1

    .line 104
    new-instance v0, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact$1;->createFromParcel(Landroid/os/Parcel;)Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;
    .locals 0

    .line 109
    new-array p1, p1, [Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact$1;->newArray(I)[Lcom/alibaba/ailabs/genie/custom/contacts/contacts/model/CuPstnCallContact;

    move-result-object p1

    return-object p1
.end method
