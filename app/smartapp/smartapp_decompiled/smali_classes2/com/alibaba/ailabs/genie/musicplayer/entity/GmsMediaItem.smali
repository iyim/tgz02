.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;
.super Lorg/json/JSONObject;
.source "GmsMediaItem.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Album:Ljava/lang/String;

.field private Artist:Ljava/lang/String;

.field private Collected:Ljava/lang/Boolean;

.field private Copyright:Ljava/lang/String;

.field private Duration:Ljava/lang/String;

.field private Format:Ljava/lang/String;

.field private Id:Ljava/lang/String;

.field private ImageUrl:Ljava/lang/String;

.field private ItemId:Ljava/lang/String;

.field private ItemType:Ljava/lang/String;

.field private Lyric:Ljava/lang/String;

.field private Position:Ljava/lang/String;

.field private Progress:Ljava/lang/Integer;

.field private Quality:Ljava/lang/String;

.field private RequestId:Ljava/lang/String;

.field private SoundDelta:Ljava/lang/String;

.field private Source:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private Url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 75
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Id:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Title:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Copyright:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Album:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Artist:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemType:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Source:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Url:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Format:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Progress:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ImageUrl:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Position:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Duration:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->RequestId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->SoundDelta:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Lyric:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Quality:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemId:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Collected:Ljava/lang/Boolean;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 282
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Id:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Title:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Copyright:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Album:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Artist:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemType:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Source:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Url:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Format:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Progress:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ImageUrl:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Position:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Duration:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->RequestId:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->SoundDelta:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Lyric:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Quality:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemId:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Collected:Ljava/lang/Boolean;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Id:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Title:Ljava/lang/String;

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Lyric:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Album:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Quality:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Artist:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemId:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Duration:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemType:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Url:Ljava/lang/String;

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Source:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Format:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Collected:Ljava/lang/Boolean;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Copyright:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Progress:Ljava/lang/Integer;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ImageUrl:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Position:Ljava/lang/String;

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->RequestId:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->SoundDelta:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    .line 16
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Id:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Title:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Copyright:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Album:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Artist:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemType:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Source:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Url:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Format:Ljava/lang/String;

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Progress:Ljava/lang/Integer;

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ImageUrl:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Position:Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Duration:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->RequestId:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->SoundDelta:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Lyric:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Quality:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemId:Ljava/lang/String;

    .line 34
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Collected:Ljava/lang/Boolean;

    const-string p1, "audioId"

    .line 49
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Id:Ljava/lang/String;

    const-string p1, "audioName"

    .line 50
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Title:Ljava/lang/String;

    const-string p1, "lyric"

    .line 51
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Lyric:Ljava/lang/String;

    const-string p1, "audioAlbum"

    .line 52
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Album:Ljava/lang/String;

    const-string p1, "quality"

    .line 53
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Quality:Ljava/lang/String;

    const-string p1, "audioAnchor"

    .line 54
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Artist:Ljava/lang/String;

    const-string p1, "itemId"

    .line 55
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemId:Ljava/lang/String;

    const-string p1, "audioUrl"

    .line 56
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Url:Ljava/lang/String;

    const-string p1, "audioSource"

    .line 57
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Source:Ljava/lang/String;

    const-string p1, "audioFormat"

    .line 58
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Format:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->isCollected()Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Collected:Ljava/lang/Boolean;

    const-string p1, "copyright"

    .line 60
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Copyright:Ljava/lang/String;

    const-string p1, "progress"

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Progress:Ljava/lang/Integer;

    const-string p1, "audioImageUrl"

    .line 62
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ImageUrl:Ljava/lang/String;

    const-string p1, "position"

    .line 63
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Position:Ljava/lang/String;

    const-string p1, "audioExt"

    .line 64
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "audioType"

    .line 67
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->setAudioType(Ljava/lang/String;)V

    const-string p1, "audioLength"

    .line 68
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->setAudioLength(Ljava/lang/String;)V

    const-string p1, "playlist_request_id"

    .line 69
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->setRequestId(Ljava/lang/String;)V

    const-string p1, "sound_delta"

    .line 70
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->setSoundDelta(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static isJson(Ljava/lang/String;)Z
    .locals 1

    .line 306
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAudioAlbum()Ljava/lang/String;
    .locals 1

    const-string v0, "audioAlbum"

    .line 106
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAnchor()Ljava/lang/String;
    .locals 1

    const-string v0, "audioAnchor"

    .line 119
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioFormat()Ljava/lang/String;
    .locals 1

    const-string v0, "audioFormat"

    .line 155
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()Ljava/lang/String;
    .locals 1

    const-string v0, "audioId"

    .line 79
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioImageUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "audioImageUrl"

    .line 173
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioLength()Ljava/lang/String;
    .locals 2

    const-string v0, "audioLength"

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 192
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioName()Ljava/lang/String;
    .locals 1

    const-string v0, "audioName"

    .line 88
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSource()Ljava/lang/String;
    .locals 1

    const-string v0, "audioSource"

    .line 137
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioType()Ljava/lang/String;
    .locals 1

    const-string v0, "audioType"

    .line 128
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "audioUrl"

    .line 146
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCopyRight()Ljava/lang/String;
    .locals 1

    const-string v0, "copyright"

    .line 97
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    const-string v0, "itemId"

    .line 237
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLyric()Ljava/lang/String;
    .locals 1

    const-string v0, "lyric"

    .line 219
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Ljava/lang/Integer;
    .locals 2

    const-string v0, "position"

    const/4 v1, 0x0

    .line 182
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()Ljava/lang/Integer;
    .locals 2

    const-string v0, "progress"

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getQuality()Ljava/lang/String;
    .locals 1

    const-string v0, "quality"

    .line 228
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    const-string v0, "playlist_request_id"

    .line 201
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundDelta()Ljava/lang/String;
    .locals 1

    const-string v0, "sound_delta"

    .line 210
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCollected()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "collect"

    .line 246
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setAudioAlbum(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioAlbum"

    .line 110
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Album:Ljava/lang/String;

    return-void
.end method

.method public setAudioAnchor(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioAnchor"

    .line 123
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Artist:Ljava/lang/String;

    return-void
.end method

.method public setAudioExt(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioExt"

    .line 314
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public setAudioFormat(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioFormat"

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Format:Ljava/lang/String;

    return-void
.end method

.method public setAudioId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioId"

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Id:Ljava/lang/String;

    return-void
.end method

.method public setAudioImageUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioImageUrl"

    .line 177
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setAudioLength(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioLength"

    .line 196
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Duration:Ljava/lang/String;

    return-void
.end method

.method public setAudioName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioName"

    .line 92
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Title:Ljava/lang/String;

    return-void
.end method

.method public setAudioSource(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioSource"

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Source:Ljava/lang/String;

    return-void
.end method

.method public setAudioType(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioType"

    .line 132
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemType:Ljava/lang/String;

    return-void
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioUrl"

    .line 150
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Url:Ljava/lang/String;

    return-void
.end method

.method public setCollect(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "collect"

    .line 250
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 251
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Collected:Ljava/lang/Boolean;

    return-void
.end method

.method public setCopyRight(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "copyright"

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Copyright:Ljava/lang/String;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "itemId"

    .line 241
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemId:Ljava/lang/String;

    return-void
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "lyric"

    .line 223
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Lyric:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "position"

    .line 186
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Position:Ljava/lang/String;

    return-void
.end method

.method public setProgress(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "progress"

    .line 168
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Progress:Ljava/lang/Integer;

    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "progress"

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public setQuality(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "quality"

    .line 232
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Quality:Ljava/lang/String;

    return-void
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "playlist_request_id"

    .line 205
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->RequestId:Ljava/lang/String;

    return-void
.end method

.method public setSoundDelta(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "sound_delta"

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->SoundDelta:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 261
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Lyric:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Album:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Quality:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Artist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Duration:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ItemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Source:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Format:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->isCollected()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Copyright:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Progress:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->ImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->Position:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->RequestId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/GmsMediaItem;->SoundDelta:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
