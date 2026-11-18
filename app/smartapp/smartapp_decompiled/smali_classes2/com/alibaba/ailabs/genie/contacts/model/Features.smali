.class public Lcom/alibaba/ailabs/genie/contacts/model/Features;
.super Ljava/lang/Object;
.source "Features.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/contacts/model/Features;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private message:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "message"
    .end annotation
.end field

.field private pstn:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "pstn"
    .end annotation
.end field

.field private video:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "video"
    .end annotation
.end field

.field private voice:Ljava/lang/Boolean;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "voice"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/model/Features$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/contacts/model/Features$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->video:Ljava/lang/Boolean;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_3

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 36
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->voice:Ljava/lang/Boolean;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_5

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    .line 38
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->pstn:Ljava/lang/Boolean;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    if-ne p1, v3, :cond_7

    const/4 v1, 0x1

    .line 40
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_6
    iput-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->message:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->video:Ljava/lang/Boolean;

    .line 18
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->voice:Ljava/lang/Boolean;

    .line 19
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->pstn:Ljava/lang/Boolean;

    .line 20
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->message:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessage()Ljava/lang/Boolean;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->message:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getPstn()Ljava/lang/Boolean;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->pstn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVideo()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->video:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getVoice()Ljava/lang/Boolean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->voice:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setMessage(Ljava/lang/Boolean;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->message:Ljava/lang/Boolean;

    return-void
.end method

.method public setPstn(Ljava/lang/Boolean;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->pstn:Ljava/lang/Boolean;

    return-void
.end method

.method public setVideo(Ljava/lang/Boolean;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->video:Ljava/lang/Boolean;

    return-void
.end method

.method public setVoice(Ljava/lang/Boolean;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->voice:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Features{video="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->video:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", voice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->voice:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pstn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->pstn:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->message:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 45
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->video:Ljava/lang/Boolean;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->voice:Ljava/lang/Boolean;

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x2

    :goto_1
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->pstn:Ljava/lang/Boolean;

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x2

    :goto_2
    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 48
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/contacts/model/Features;->message:Ljava/lang/Boolean;

    if-nez p2, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    :goto_3
    int-to-byte p2, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
