.class Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;
.super Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry;
.source "DXFileDataBaseEntry.java"


# annotations
.annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Table;
    value = "template_info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry$Columns;
    }
.end annotation


# static fields
.field static final SCHEMA:Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;


# instance fields
.field public bizType:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        indexed = true
        notNull = true
        primaryKey = true
        value = "biz_type"
    .end annotation
.end field

.field public extra1:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_1"
    .end annotation
.end field

.field public extra2:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_2"
    .end annotation
.end field

.field public extra3:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_3"
    .end annotation
.end field

.field public extra4:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_4"
    .end annotation
.end field

.field public extra5:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_5"
    .end annotation
.end field

.field public extra6:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_6"
    .end annotation
.end field

.field public extra7:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_7"
    .end annotation
.end field

.field public extra8:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "extra_8"
    .end annotation
.end field

.field public mainPath:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        notNull = true
        value = "main_path"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        indexed = true
        notNull = true
        primaryKey = true
        value = "name"
    .end annotation
.end field

.field public styleFiles:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "style_files"
    .end annotation
.end field

.field public url:Ljava/lang/String;
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        value = "url"
    .end annotation
.end field

.field public version:J
    .annotation runtime Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;
        notNull = true
        primaryKey = true
        value = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;

    const-class v1, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->SCHEMA:Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DXFileDataBaseEntry{bizType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->bizType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->version:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mainPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->mainPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", styleFiles=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->styleFiles:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra1=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra2=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra3=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra4=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra4:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra6=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra6:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra7=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra7:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", extra8=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/taobao/android/dinamicx/template/db/DXFileDataBaseEntry;->extra8:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
