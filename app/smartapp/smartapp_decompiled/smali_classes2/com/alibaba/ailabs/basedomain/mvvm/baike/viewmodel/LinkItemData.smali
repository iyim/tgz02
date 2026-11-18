.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;
.super Ljava/lang/Object;
.source "LinkItemData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LinkItemData"


# instance fields
.field private destVideoUrl:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->iconUrl:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->text:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->destVideoUrl:Ljava/lang/String;

    return-void
.end method

.method private jumpToMusicOrVideo(Ljava/lang/Object;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDestUrl()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->destVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->text:Ljava/lang/String;

    return-object v0
.end method

.method public jump(Landroid/content/Context;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LinkItemData{iconUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", destVideoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->destVideoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mMusicList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
