.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;
.super Ljava/lang/Object;
.source "HistoryMusicBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorsBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$AuthorTypesBean;,
        Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$GenderBean;
    }
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private authorTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$AuthorTypesBean;",
            ">;"
        }
    .end annotation
.end field

.field private cover:Ljava/lang/Object;

.field private description:Ljava/lang/String;

.field private gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$GenderBean;

.field private id:I

.field private isOnline:Z

.field private source:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$AuthorTypesBean;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->authorTypes:Ljava/util/List;

    return-object v0
.end method

.method public getCover()Ljava/lang/Object;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->cover:Ljava/lang/Object;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$GenderBean;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$GenderBean;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->id:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isIsOnline()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->isOnline:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->alias:Ljava/lang/String;

    return-void
.end method

.method public setAuthorTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$AuthorTypesBean;",
            ">;)V"
        }
    .end annotation

    .line 334
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->authorTypes:Ljava/util/List;

    return-void
.end method

.method public setCover(Ljava/lang/Object;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->cover:Ljava/lang/Object;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setGender(Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$GenderBean;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->gender:Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean$GenderBean;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 270
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->id:I

    return-void
.end method

.method public setIsOnline(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->isOnline:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->source:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/HistoryMusicBean$AuthorsBean;->type:Ljava/lang/String;

    return-void
.end method
