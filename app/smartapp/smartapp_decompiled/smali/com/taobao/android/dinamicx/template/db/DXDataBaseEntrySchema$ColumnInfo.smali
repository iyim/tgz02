.class public final Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;
.super Ljava/lang/Object;
.source "DXDataBaseEntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColumnInfo"
.end annotation


# static fields
.field private static final ID_KEY:Ljava/lang/String; = "_id"


# instance fields
.field public final defaultValue:Ljava/lang/String;

.field public final field:Ljava/lang/reflect/Field;

.field public final indexed:Z

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKey:Z

.field public final projectionIndex:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/String;ZLjava/lang/reflect/Field;I)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->name:Ljava/lang/String;

    .line 228
    iput p2, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->type:I

    .line 229
    iput-boolean p3, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->indexed:Z

    .line 230
    iput-boolean p4, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->primaryKey:Z

    .line 231
    iput-object p5, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    .line 232
    iput-object p7, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->field:Ljava/lang/reflect/Field;

    .line 233
    iput p8, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->projectionIndex:I

    .line 234
    iput-boolean p6, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->notNull:Z

    const/4 p1, 0x1

    .line 235
    invoke-virtual {p7, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method


# virtual methods
.method public isId()Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->name:Ljava/lang/String;

    const-string v1, "_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
