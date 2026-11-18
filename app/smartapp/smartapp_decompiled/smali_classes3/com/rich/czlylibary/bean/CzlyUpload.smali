.class public Lcom/rich/czlylibary/bean/CzlyUpload;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static CONTENTID:Ljava/lang/String; = "contentId"

.field public static COPYRIGHTID:Ljava/lang/String; = "copyrightId"

.field public static FORMAT:Ljava/lang/String; = "format"

.field public static ID:Ljava/lang/String; = "id"

.field public static ISONLINE:Ljava/lang/String; = "isOnline"

.field public static ITEMID:Ljava/lang/String; = "itemId"

.field public static LISTENSTARTTIME:Ljava/lang/String; = "listenStartTime"

.field public static MUSICLISTID:Ljava/lang/String; = "musicListId"

.field public static NEXTCONTENTID:Ljava/lang/String; = "nextContentid"

.field public static OFFSET:Ljava/lang/String; = "offset"

.field public static PAGESIZE:Ljava/lang/String; = "pageSize"

.field public static PERIOD:Ljava/lang/String; = "period"

.field public static PLAYTYPE:Ljava/lang/String; = "playType"

.field public static RESOURCETYPE:Ljava/lang/String; = "resourceType"

.field public static SONGID:Ljava/lang/String; = "songId"

.field public static SONGNAME:Ljava/lang/String; = "songName"


# instance fields
.field public contentId:Ljava/lang/String;

.field public copyrightId:Ljava/lang/String;

.field public format:Ljava/lang/String;

.field public id:I

.field public isOnline:Ljava/lang/String;

.field public itemId:Ljava/lang/String;

.field public listenStartTime:Ljava/lang/String;

.field public musicListId:Ljava/lang/String;

.field public nextContentid:Ljava/lang/String;

.field public offset:Ljava/lang/String;

.field public pageSize:Ljava/lang/String;

.field public period:Ljava/lang/String;

.field public playType:Ljava/lang/String;

.field public resourcetype:Ljava/lang/String;

.field public songId:Ljava/lang/String;

.field public songName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static buildContentValues(Lcom/rich/czlylibary/bean/CzlyUpload;)Landroid/content/ContentValues;
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->RESOURCETYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->resourcetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->ITEMID:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->MUSICLISTID:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->musicListId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->COPYRIGHTID:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->copyrightId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->CONTENTID:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->SONGID:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->songId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->FORMAT:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->format:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->SONGNAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->LISTENSTARTTIME:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->listenStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PERIOD:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->period:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PLAYTYPE:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->playType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->NEXTCONTENTID:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->nextContentid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->OFFSET:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->offset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PAGESIZE:Ljava/lang/String;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->pageSize:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->ISONLINE:Ljava/lang/String;

    iget-object p0, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->isOnline:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseCursorToBean(Landroid/database/Cursor;)Lcom/rich/czlylibary/bean/CzlyUpload;
    .locals 2

    new-instance v0, Lcom/rich/czlylibary/bean/CzlyUpload;

    invoke-direct {v0}, Lcom/rich/czlylibary/bean/CzlyUpload;-><init>()V

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->ID:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->id:I

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->RESOURCETYPE:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->resourcetype:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->ITEMID:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->itemId:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->MUSICLISTID:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->musicListId:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->COPYRIGHTID:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->copyrightId:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->CONTENTID:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->contentId:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->SONGID:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->songId:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->FORMAT:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->format:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->SONGNAME:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->songName:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->LISTENSTARTTIME:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->listenStartTime:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PERIOD:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->period:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PLAYTYPE:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->playType:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->NEXTCONTENTID:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->nextContentid:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->OFFSET:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->offset:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->PAGESIZE:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->pageSize:Ljava/lang/String;

    sget-object v1, Lcom/rich/czlylibary/bean/CzlyUpload;->ISONLINE:Ljava/lang/String;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/rich/czlylibary/bean/CzlyUpload;->isOnline:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CzlyUpload{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resourcetype=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->resourcetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", itemId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->itemId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", musicListId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->musicListId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", copyrightId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->copyrightId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", contentId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->contentId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", songId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->songId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", songName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->songName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", listenStartTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->listenStartTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", period=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->period:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->playType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", nextContentid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->nextContentid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offset=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->offset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pageSize=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->pageSize:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isOnline=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/rich/czlylibary/bean/CzlyUpload;->isOnline:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
