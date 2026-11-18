.class public final Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;
.super Ljava/lang/Object;
.source "DXDataBaseEntrySchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;
    }
.end annotation


# static fields
.field private static final SQLITE_TYPES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DXDataBaseEntrySchema"

.field public static final TYPE_BLOB:I = 0x7

.field public static final TYPE_BOOLEAN:I = 0x1

.field public static final TYPE_DOUBLE:I = 0x6

.field public static final TYPE_FLOAT:I = 0x5

.field public static final TYPE_INT:I = 0x3

.field public static final TYPE_LONG:I = 0x4

.field public static final TYPE_SHORT:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field private final mColumnInfo:[Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;

.field private final mProjection:[Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "TEXT"

    const-string v1, "INTEGER"

    const-string v2, "INTEGER"

    const-string v3, "INTEGER"

    const-string v4, "INTEGER"

    const-string v5, "REAL"

    const-string v6, "REAL"

    const-string v7, "NONE"

    .line 32
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->parseColumnInfo(Ljava/lang/Class;)[Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->parseTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mTableName:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;

    const/4 p1, 0x0

    .line 48
    new-array v1, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 50
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 51
    :goto_0
    array-length v2, v0

    if-eq p1, v2, :cond_0

    .line 52
    aget-object v2, v0, p1

    .line 53
    iget-object v2, v2, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->name:Ljava/lang/String;

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iput-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method private logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/ArrayList<",
            "Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;",
            ">;)V"
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_9

    .line 169
    aget-object v10, p1, v1

    .line 171
    const-class v2, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;

    if-nez v2, :cond_0

    goto :goto_2

    .line 176
    :cond_0
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 177
    const-class v4, Ljava/lang/String;

    if-ne v3, v4, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 179
    :cond_1
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_1

    .line 181
    :cond_2
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    const/4 v5, 0x2

    goto :goto_1

    .line 183
    :cond_3
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_4

    const/4 v3, 0x3

    const/4 v5, 0x3

    goto :goto_1

    .line 185
    :cond_4
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x4

    const/4 v5, 0x4

    goto :goto_1

    .line 187
    :cond_5
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_6

    const/4 v3, 0x5

    const/4 v5, 0x5

    goto :goto_1

    .line 189
    :cond_6
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v4, :cond_7

    const/4 v3, 0x6

    const/4 v5, 0x6

    goto :goto_1

    .line 191
    :cond_7
    const-class v4, [B

    if-ne v3, v4, :cond_8

    const/4 v3, 0x7

    const/4 v5, 0x7

    .line 199
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 200
    new-instance v12, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;

    invoke-interface {v2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;->value()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;->indexed()Z

    move-result v6

    invoke-interface {v2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;->primaryKey()Z

    move-result v7

    .line 201
    invoke-interface {v2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;->defaultValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Column;->notNull()Z

    move-result v9

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;-><init>(Ljava/lang/String;IZZLjava/lang/String;ZLjava/lang/reflect/Field;I)V

    .line 200
    invoke-virtual {p2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported field type for column: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    return-void
.end method

.method private parseColumnInfo(Ljava/lang/Class;)[Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->parseColumnInfo(Ljava/lang/Class;Ljava/util/ArrayList;)V

    .line 154
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;

    .line 159
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private parseTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 141
    const-class v0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Table;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Table;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntry$Table;->value()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .line 74
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mTableName:Ljava/lang/String;

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "DinamicX"

    const-string v0, "DataBase"

    const-string/jumbo v1, "\u6ca1\u6709\u7528\u6ce8\u89e3\u5b9a\u4e49\u8868\u540d"

    .line 76
    invoke-static {p1, v0, v1}, Lcom/taobao/android/dinamicx/log/DXRemoteLog;->remoteLoge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (_id INTEGER"

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v3, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, ","

    if-ge v6, v4, :cond_4

    aget-object v8, v3, v6

    .line 85
    invoke-virtual {v8}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->isId()Z

    move-result v9

    if-nez v9, :cond_3

    const/16 v9, 0x2c

    .line 86
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    iget-object v9, v8, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    .line 88
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    sget-object v9, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->SQLITE_TYPES:[Ljava/lang/String;

    iget v10, v8, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->type:I

    aget-object v9, v9, v10

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v9, v8, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, " DEFAULT "

    .line 91
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v9, v8, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->defaultValue:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 94
    :cond_1
    iget-boolean v9, v8, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->notNull:Z

    if-eqz v9, :cond_2

    const-string v9, " NOT NULL"

    .line 95
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_2
    :goto_1
    iget-boolean v9, v8, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->primaryKey:Z

    if-eqz v9, :cond_3

    .line 99
    iget-object v8, v8, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v3, ", PRIMARY KEY("

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 108
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ");"

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "CREATE INDEX index_template ON "

    .line 115
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    .line 117
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mColumnInfo:[Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v6, v0, v4

    .line 120
    iget-boolean v8, v6, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->indexed:Z

    if-eqz v8, :cond_6

    .line 121
    iget-object v6, v6, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema$ColumnInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 125
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->logExecSql(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mProjection:[Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/taobao/android/dinamicx/template/db/DXDataBaseEntrySchema;->mTableName:Ljava/lang/String;

    return-object v0
.end method
