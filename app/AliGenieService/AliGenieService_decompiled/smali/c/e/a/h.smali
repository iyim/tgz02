.class public Lc/e/a/h;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/Object;

.field public static d:Z

.field public static final synthetic e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lc/e/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lc/e/a/h;->e:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/h;->a:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lc/e/a/h;->b:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/h;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lc/e/a/h;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const-string v0, "="

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " line not contain \'=\'!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const-string p1, "\n"

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    :cond_2
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_0
    return v1
.end method

.method public static a(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crashsdk"

    if-gez v1, :cond_1

    const-string p0, "getProcessName: Can not found process name start!"

    :goto_0
    invoke-static {v2, p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const-string v3, "]"

    invoke-virtual {p0, v3, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-gez v3, :cond_2

    const-string p0, "getProcessName: Can not found process name end!"

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    const-string p0, "getProcessName: process name is empty"

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/StringBuffer;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0x400

    move v2, v0

    move-object v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-lez v2, :cond_2

    .line 2
    :try_start_0
    new-array v0, v2, [C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    div-int/lit8 v2, v2, 0x2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_1

    :cond_2
    if-nez v0, :cond_3

    const-string p0, "readCrashStatData alloc buffer failed!"

    const-string v0, "crashsdk"

    .line 3
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4, v0}, Ljava/io/FileReader;->read([C)I

    move-result p0

    if-lez p0, :cond_4

    invoke-virtual {v2, v0, v3, p0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p0

    move-object v1, v4

    goto :goto_3

    :catch_0
    move-exception p0

    move-object v1, v4

    goto :goto_1

    :catchall_2
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 4
    :goto_1
    :try_start_3
    invoke-static {p0, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v2

    :goto_3
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a()V
    .locals 4

    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x2bc

    invoke-direct {v0, v1}, Lc/e/a/a/d;-><init>(I)V

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v0, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(I)V
    .locals 1

    const/16 v0, 0x2bc

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Lc/e/a/h;->b(Z)V

    :goto_0
    return-void
.end method

.method public static a(II)V
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Add stat for type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " with count 0!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lc/e/a/c;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0x2ef

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p0

    invoke-direct {v1, v2, v3}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lc/e/a/h;->a(Ljava/lang/String;Lc/e/a/a/d;)Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "crashsdk"

    if-eqz v0, :cond_1

    const-string p0, "cacheReportedStatsForCallback: processName is null"

    invoke-static {v2, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    invoke-static {p2}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "cacheReportedStatsForCallback: callbackCacheFilePathName is null"

    invoke-static {v2, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x2f2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-direct {v0, v1, v2}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p2, v0}, Lc/e/a/h;->a(Ljava/lang/String;Lc/e/a/a/d;)Z

    return-void
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "="

    const-string v2, "\n"

    if-gez v0, :cond_0

    if-lez p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v2, p1}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 25
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->T:Z

    if-nez v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lc/e/a/f;->r()V

    .line 27
    sget-boolean v0, Lc/e/a/a/g;->h:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 28
    invoke-static {v0, p0}, Lc/e/a/a/g;->a(IZ)V

    .line 29
    :cond_2
    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lc/e/a/h;->b(Z)V

    invoke-static {}, Lc/e/a/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lc/e/a/h;->a(Ljava/lang/String;Z)Z

    invoke-static {p0}, Lc/e/a/a/g;->a(Z)V

    :cond_3
    return-void
.end method

.method public static a(I[Ljava/lang/Object;)Z
    .locals 19

    const-string v0, ", count: "

    const-string v1, ", key: "

    const-string v2, "name: "

    const-string v3, "\n"

    const-string v4, "]\n"

    const-string v5, "["

    const/4 v6, 0x0

    const-string v7, "crashsdk"

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch p0, :pswitch_data_0

    move v7, v9

    return v7

    :pswitch_0
    sget-boolean v0, Lc/e/a/h;->e:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    aget-object v0, p1, v9

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return v8

    :cond_2
    return v9

    :pswitch_1
    sget-boolean v4, Lc/e/a/h;->e:Z

    if-nez v4, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    :goto_1
    aget-object v4, p1, v9

    check-cast v4, Ljava/lang/String;

    .line 6
    sget-boolean v5, Lc/e/a/h;->e:Z

    if-nez v5, :cond_6

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_6
    :goto_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lc/e/a/h;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/lang/StringBuffer;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-static {v4}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-static {}, Lc/e/a/h;->b()Landroid/util/SparseArray;

    move-result-object v7

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v11

    if-eqz v11, :cond_9

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "notifyStatsDetailImpl: processName: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    move v12, v9

    move v13, v12

    :goto_3
    :try_start_0
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v12, v14, :cond_c

    invoke-virtual {v7, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v7, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v4, v15}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_b

    if-eqz v11, :cond_a

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-static {v10, v14, v8}, Lc/e/a/e;->a(Ljava/lang/String;II)V

    invoke-static {v4, v15, v9}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const/4 v13, 0x1

    :cond_b
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_3

    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;)V

    :cond_d
    if-eqz v13, :cond_e

    const v0, 0xf4240

    invoke-static {v10, v0, v9}, Lc/e/a/e;->a(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    if-eqz v13, :cond_f

    invoke-static {v5, v4}, Lc/e/a/h;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    :cond_f
    move v9, v13

    goto :goto_5

    :catchall_0
    move-exception v0

    if-eqz v13, :cond_10

    invoke-static {v5, v4}, Lc/e/a/h;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    :cond_10
    throw v0

    :cond_11
    :goto_4
    const-string v0, "notifyStatsDetailImpl: process name is invalid"

    invoke-static {v7, v0, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    return v9

    .line 7
    :pswitch_2
    sget-boolean v0, Lc/e/a/h;->e:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    :goto_6
    aget-object v0, p1, v9

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, p1, v2

    move-object v2, v0

    check-cast v2, Ljava/util/HashMap;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 8
    :try_start_1
    invoke-static {}, Lc/e/a/c;->z()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v6, v0

    .line 9
    invoke-static {v6, v9}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 10
    :goto_7
    :try_start_2
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 11
    :try_start_4
    invoke-static {v0, v9}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 12
    :cond_14
    :goto_8
    invoke-static {v6}, Lc/e/a/h;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/StringBuffer;)Z

    move-result v3

    if-eqz v3, :cond_16

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_16
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v8, v9

    :cond_17
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_17

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v2, v3}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const/4 v8, 0x1

    goto :goto_9

    :cond_18
    if-eqz v8, :cond_19

    invoke-static {v6, v0}, Lc/e/a/h;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_a

    :catchall_3
    move-exception v0

    .line 13
    invoke-static {v0, v9}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_19
    :goto_a
    const/4 v1, 0x1

    return v1

    .line 14
    :pswitch_3
    sget-boolean v0, Lc/e/a/h;->e:Z

    if-nez v0, :cond_1b

    if-eqz p1, :cond_1a

    goto :goto_b

    :cond_1a
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1b
    :goto_b
    aget-object v0, p1, v9

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x1

    return v1

    :cond_1c
    return v9

    :pswitch_4
    sget-boolean v4, Lc/e/a/h;->e:Z

    if-nez v4, :cond_1e

    if-eqz p1, :cond_1d

    goto :goto_c

    :cond_1d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1e
    :goto_c
    aget-object v4, p1, v9

    check-cast v4, Ljava/lang/String;

    .line 15
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lc/e/a/h;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v8}, Lc/e/a/a/f;->a(Ljava/lang/StringBuffer;)Z

    move-result v10

    if-eqz v10, :cond_1f

    move/from16 v16, v9

    goto/16 :goto_f

    :cond_1f
    invoke-static {v8}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_28

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-gtz v11, :cond_20

    goto/16 :goto_e

    :cond_20
    invoke-static {}, Lc/e/a/h;->b()Landroid/util/SparseArray;

    move-result-object v7

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lc/e/a/i;->a()Z

    move-result v12

    if-eqz v12, :cond_21

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "reportCrashStatImpl: processName: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    move v13, v9

    move v14, v13

    :goto_d
    :try_start_5
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v13, v15, :cond_24

    invoke-virtual {v7, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Ljava/lang/String;

    move-object/from16 p0, v7

    invoke-static {v8, v9}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_23

    if-eqz v12, :cond_22

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    invoke-static {v10, v15, v7}, Lc/e/a/a/g;->a(Ljava/lang/String;II)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v11, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8, v9, v7}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    const/4 v14, 0x1

    :cond_23
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    move-object/from16 v7, p0

    goto :goto_d

    :cond_24
    if-eqz v12, :cond_25

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_25
    if-eqz v14, :cond_26

    invoke-static {v5, v8}, Lc/e/a/h;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_26

    invoke-static {v4}, Lc/e/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v11, v0}, Lc/e/a/h;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_26
    const/16 v16, 0x1

    goto :goto_f

    :catchall_4
    move-exception v0

    if-eqz v14, :cond_27

    invoke-static {v5, v8}, Lc/e/a/h;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_27

    invoke-static {v4}, Lc/e/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v11, v1}, Lc/e/a/h;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    :cond_27
    throw v0

    :cond_28
    :goto_e
    const-string v0, "reportCrashStatImpl: process name is invalid"

    invoke-static {v7, v0, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v16, 0x0

    :goto_f
    return v16

    .line 16
    :pswitch_5
    sget-boolean v0, Lc/e/a/h;->e:Z

    if-nez v0, :cond_2a

    if-eqz p1, :cond_29

    goto :goto_10

    :cond_29
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2a
    :goto_10
    const/4 v1, 0x0

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 17
    :try_start_6
    invoke-static {}, Lc/e/a/c;->z()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object v3, v0

    const/4 v8, 0x0

    .line 18
    invoke-static {v3, v8}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 19
    :goto_11
    :try_start_7
    invoke-static {v1}, Lc/e/a/h;->b(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Stat type not exists: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v18, 0x0

    goto :goto_14

    :cond_2b
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_12

    :catchall_6
    move-exception v0

    const/4 v6, 0x0

    .line 20
    :try_start_9
    invoke-static {v0, v6}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 21
    :cond_2c
    :goto_12
    :try_start_a
    invoke-static {v1}, Lc/e/a/h;->a(Ljava/io/File;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/StringBuffer;)Z

    move-result v6

    if-eqz v6, :cond_2e

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_2d
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2e
    invoke-static {v0, v3}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v0, v3, v4}, Lc/e/a/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    invoke-static {v1, v0}, Lc/e/a/h;->a(Ljava/io/File;Ljava/lang/StringBuffer;)Z

    move-result v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    move/from16 v18, v9

    goto :goto_14

    :catchall_7
    move-exception v0

    move v7, v6

    goto :goto_13

    :catchall_8
    move-exception v0

    const/4 v7, 0x0

    .line 22
    :goto_13
    invoke-static {v0, v7}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move/from16 v18, v7

    :goto_14
    return v18

    :pswitch_data_0
    .packed-switch 0x2ef
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/io/File;Ljava/lang/StringBuffer;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v2, p0, v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 23
    :goto_0
    :try_start_2
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    :goto_1
    return v0

    :goto_2
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Lc/e/a/a/d;

    const/16 v2, 0x2f3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-direct {v0, v2, v3}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lc/e/a/h;->a(Ljava/lang/String;Lc/e/a/a/d;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Lc/e/a/a/d;)Z
    .locals 1

    sget-object v0, Lc/e/a/h;->a:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lc/e/a/c;->a(Ljava/lang/Object;Ljava/lang/String;Lc/e/a/a/d;)Z

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const-string v0, "crash detail report"

    invoke-static {p1, v0}, Lc/e/a/a/g;->a(ZLjava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    new-instance p1, Lc/e/a/a/d;

    const/16 v1, 0x2f0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    invoke-direct {p1, v1, v2}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lc/e/a/h;->a(Ljava/lang/String;Lc/e/a/a/d;)Z

    move-result p0

    return p0
.end method

.method public static b()Landroid/util/SparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lc/e/a/h;->c()V

    sget-object v0, Lc/e/a/h;->b:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lc/e/a/h;->c()V

    sget-object v0, Lc/e/a/h;->b:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Z)V
    .locals 3

    sget-boolean v0, Lc/e/a/h;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lc/e/a/h;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lc/e/a/h;->d:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const-string v1, "crash detail"

    invoke-static {p0, v1}, Lc/e/a/a/g;->a(ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 1
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v1, Lc/e/a/c;->z:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const/4 p0, 0x2

    .line 2
    invoke-static {p0, v2}, Lc/e/a/h;->a(II)V

    invoke-static {}, Lc/e/a/c;->y()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x2a

    invoke-static {p0, v2}, Lc/e/a/h;->a(II)V

    :cond_3
    :goto_0
    move p0, v2

    goto :goto_1

    .line 3
    :cond_4
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean v1, Lc/e/a/c;->A:Z

    if-eqz v1, :cond_5

    const/16 p0, 0x65

    .line 4
    invoke-static {p0, v2}, Lc/e/a/h;->a(II)V

    invoke-static {}, Lc/e/a/c;->y()Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x2b

    invoke-static {p0, v2}, Lc/e/a/h;->a(II)V

    goto :goto_0

    :cond_5
    :goto_1
    if-eqz p0, :cond_6

    invoke-static {v2, v2}, Lc/e/a/h;->a(II)V

    :cond_6
    const/16 p0, 0x64

    invoke-static {p0, v2}, Lc/e/a/h;->a(II)V

    sput-boolean v2, Lc/e/a/h;->d:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()V
    .locals 4

    sget-object v0, Lc/e/a/h;->b:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x64

    const-string v3, "start_pv"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x66

    const-string v3, "start_hpv"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string v3, "all_all"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "all_fg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x65

    const-string v3, "all_bg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/4 v2, 0x3

    const-string v3, "java_fg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string v3, "java_bg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/4 v2, 0x7

    const-string v3, "native_fg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x8

    const-string v3, "native_bg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x1b

    const-string v3, "native_anr_fg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x1c

    const-string v3, "native_anr_bg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x9

    const-string v3, "native_ok"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xa

    const-string v3, "unexp_anr"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x1d

    const-string v3, "unexp_lowmem"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x1e

    const-string v3, "unexp_killed"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x1f

    const-string v3, "unexp_exit"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x20

    const-string v3, "unexp_restart"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xb

    const-string v3, "unexp_fg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xc

    const-string v3, "unexp_bg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x28

    const-string v3, "anr_fg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x29

    const-string v3, "anr_bg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x2a

    const-string v3, "anr_cr_fg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x2b

    const-string v3, "anr_cr_bg"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xd

    const-string v3, "log_up_succ"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xe

    const-string v3, "log_up_fail"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xf

    const-string v3, "log_empty"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xc8

    const-string v3, "log_tmp"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x10

    const-string v3, "log_abd_all"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x16

    const-string v3, "log_abd_builtin"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x17

    const-string v3, "log_abd_custom"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x11

    const-string v3, "log_large"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x12

    const-string v3, "log_up_all"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x13

    const-string v3, "log_up_bytes"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x14

    const-string v3, "log_up_crash"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x15

    const-string v3, "log_up_custom"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x18

    const-string v3, "log_zipped"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0xc9

    const-string v3, "log_enced"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x19

    const-string v3, "log_renamed"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lc/e/a/h;->b:Landroid/util/SparseArray;

    const/16 v2, 0x1a

    const-string v3, "log_safe_skip"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
