.class public Lc/e/a/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/f$c;,
        Lc/e/a/f$d;,
        Lc/e/a/f$b;,
        Lc/e/a/f$a;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:I

.field public static C:I

.field public static D:I

.field public static E:I

.field public static F:I

.field public static G:I

.field public static H:Ljava/lang/String;

.field public static I:Z

.field public static J:Z

.field public static K:I

.field public static L:I

.field public static M:Z

.field public static N:Lc/e/a/a/d;

.field public static O:Lc/e/a/f$c;

.field public static P:Z

.field public static final Q:Lc/e/a/a/d;

.field public static R:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public static S:Z

.field public static T:Ljava/lang/Runnable;

.field public static final U:Ljava/lang/Object;

.field public static V:Ljava/lang/Runnable;

.field public static final W:Ljava/lang/Object;

.field public static volatile X:Z

.field public static Y:Z

.field public static final synthetic Z:Z

.field public static b:J

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static d:Z

.field public static e:J

.field public static f:J

.field public static g:Z

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/lang/Object;

.field public static final o:Ljava/lang/Object;

.field public static final p:Ljava/lang/Object;

.field public static final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static r:I

.field public static s:Ljava/lang/String;

.field public static t:Z

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static final w:Ljava/lang/Object;

.field public static final x:Ljava/lang/Object;

.field public static y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static z:Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/FileInputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Lc/e/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lc/e/a/f;->Z:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc/e/a/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v2, Lc/e/a/f;->d:Z

    const-wide/16 v3, 0x0

    sput-wide v3, Lc/e/a/f;->e:J

    const-wide/16 v3, -0x1

    sput-wide v3, Lc/e/a/f;->f:J

    sput-boolean v1, Lc/e/a/f;->g:Z

    const-string v0, ""

    sput-object v0, Lc/e/a/f;->i:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lc/e/a/f;->j:Ljava/lang/String;

    sput-object v0, Lc/e/a/f;->k:Ljava/lang/String;

    sput-object v0, Lc/e/a/f;->l:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/f;->m:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/f;->n:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/f;->o:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/f;->p:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lc/e/a/f;->q:Ljava/util/ArrayList;

    sput v2, Lc/e/a/f;->r:I

    sput-object v0, Lc/e/a/f;->s:Ljava/lang/String;

    sput-boolean v2, Lc/e/a/f;->t:Z

    sput-object v0, Lc/e/a/f;->u:Ljava/lang/String;

    sput-object v0, Lc/e/a/f;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/f;->w:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lc/e/a/f;->x:Ljava/lang/Object;

    sput-object v0, Lc/e/a/f;->y:Ljava/util/Map;

    sput-object v0, Lc/e/a/f;->z:Ljava/lang/String;

    const/4 v1, -0x1

    sput v1, Lc/e/a/f;->A:I

    sput v1, Lc/e/a/f;->B:I

    sput v1, Lc/e/a/f;->C:I

    sput v1, Lc/e/a/f;->D:I

    sput v1, Lc/e/a/f;->E:I

    sput v1, Lc/e/a/f;->F:I

    sput v1, Lc/e/a/f;->G:I

    const-string v1, "?"

    sput-object v1, Lc/e/a/f;->H:Ljava/lang/String;

    sput-boolean v2, Lc/e/a/f;->I:Z

    sput-boolean v2, Lc/e/a/f;->J:Z

    sput v2, Lc/e/a/f;->K:I

    sput v2, Lc/e/a/f;->L:I

    sput-boolean v2, Lc/e/a/f;->M:Z

    new-instance v1, Lc/e/a/a/d;

    const/16 v3, 0x195

    invoke-direct {v1, v3}, Lc/e/a/a/d;-><init>(I)V

    sput-object v1, Lc/e/a/f;->N:Lc/e/a/a/d;

    new-instance v1, Lc/e/a/f$c;

    invoke-direct {v1, v2}, Lc/e/a/f$c;-><init>(B)V

    sput-object v1, Lc/e/a/f;->O:Lc/e/a/f$c;

    sput-boolean v2, Lc/e/a/f;->P:Z

    new-instance v1, Lc/e/a/a/d;

    const/16 v3, 0x19c

    invoke-direct {v1, v3}, Lc/e/a/a/d;-><init>(I)V

    sput-object v1, Lc/e/a/f;->Q:Lc/e/a/a/d;

    sput-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    sput-boolean v2, Lc/e/a/f;->S:Z

    sput-object v0, Lc/e/a/f;->T:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/f;->U:Ljava/lang/Object;

    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x197

    invoke-direct {v0, v1}, Lc/e/a/a/d;-><init>(I)V

    sput-object v0, Lc/e/a/f;->V:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/e/a/f;->W:Ljava/lang/Object;

    sput-boolean v2, Lc/e/a/f;->X:Z

    sput-boolean v2, Lc/e/a/f;->Y:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/e/a/f;->a:Ljava/util/List;

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v1, v1, Lc/e/a/g/b;->M:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 2
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/dev/null"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lc/e/a/f;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 3
    :try_start_2
    invoke-static {v1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    return-void

    .line 4
    :goto_1
    invoke-static {v1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return v0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lc/e/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not found or decode failed!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v2, p2, 0x20

    if-le p1, v2, :cond_2

    move p1, p2

    :cond_2
    const-string p2, "UTF-8"

    if-lez p1, :cond_3

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    const-string v2, "\n"

    invoke-virtual {v2, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_4

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "(truncated %d bytes)\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p2, p1

    move p1, v0

    :goto_0
    invoke-static {p2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_4
    :goto_1
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return p1
.end method

.method public static a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v2, Landroid/os/StatFs;

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v2, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v2, p1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    :cond_0
    :try_start_1
    const-class p1, Landroid/os/StatFs;

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    int-to-long p0, p0

    return-wide p0

    :catchall_1
    move-exception p0

    .line 3
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "/proc/%d/cmdline"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x80

    invoke-static {v1, p0, v0}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lc/e/a/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 4
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_0
    const-string p0, "unknown"

    return-object p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 5
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->a0:Z

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gtz v0, :cond_1

    return-object p0

    :cond_1
    const/16 v1, 0x5f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v0, :cond_2

    return-object p0

    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gt v1, v2, :cond_3

    return-object p0

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CrashSDK"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    add-int/2addr v0, v5

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/a/f;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    return-object p0

    :cond_4
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lc/e/a/a/f;->c(Ljava/io/File;)[B

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    if-gtz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 7
    invoke-static {v2, v0, v5, v5}, Lc/e/a/a/b;->a([B[BZZ)[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0, v6}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_0
    if-nez v3, :cond_6

    return-object p0

    :cond_6
    const-string v0, ".ec"

    .line 9
    invoke-static {p0, v0}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v4, ".tmp"

    invoke-static {v0, v4}, Lc/c/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lc/e/a/a/f;->a(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_7

    return-object p0

    :cond_7
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object p0

    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_9
    :goto_1
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "ps"

    const-string v2, "-ef"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {p0}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p1}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "UTF-8"

    if-eqz v5, :cond_5

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v5, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    :cond_2
    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_3

    const/16 v8, 0x2e

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gtz v8, :cond_4

    :cond_3
    move v7, v0

    :cond_4
    :goto_1
    if-eqz v7, :cond_0

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v5, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    const-string p0, "exception exists."

    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    const-string v5, "java"

    const-string v6, "\n"

    const-string v7, "\'\n"

    const-string v8, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v9, "UTF-8"

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    :try_start_0
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    const/4 v14, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lc/e/a/i;->j()V

    invoke-static {v14}, Lc/e/a/f;->a(Z)V

    :cond_0
    cmp-long v15, v3, v11

    if-nez v15, :cond_1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v11, Lc/e/a/f$a;

    invoke-direct {v11, v3, v4, v0}, Lc/e/a/f$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1c

    :try_start_1
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x7e

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 12
    :cond_2
    :goto_1
    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lc/e/a/f;->d:Z

    if-nez v0, :cond_3

    const-string v0, "ucebujava"

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_25

    :cond_3
    move-object v0, v5

    .line 13
    :goto_2
    invoke-static {v11, v2, v0}, Lc/e/a/f;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p4, :cond_4

    :try_start_3
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v12, v0

    .line 14
    :try_start_4
    invoke-static {v12, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 15
    :cond_4
    :goto_3
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "Process Name: \'"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v12, "Thread Name: \'"

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    .line 16
    :try_start_6
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_4
    :try_start_7
    const-string v0, "Back traces starts.\n"

    .line 17
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    const-class v0, Ljava/lang/Throwable;

    const-string v7, "detailMessage"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5

    check-cast v7, Ljava/lang/String;

    const-string v12, "\n\t"

    const-string v13, "\n->  "

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    .line 18
    :try_start_9
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 19
    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "Message: "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    .line 20
    :try_start_a
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 21
    :cond_6
    :goto_6
    :try_start_b
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, v11}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v0

    .line 22
    :try_start_c
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :goto_7
    :try_start_d
    const-string v0, "Back traces ends.\n"

    .line 23
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    .line 24
    :try_start_e
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 25
    :goto_8
    invoke-static {v11}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v1, v0

    .line 26
    :try_start_10
    invoke-static {v1, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 27
    :goto_9
    :try_start_11
    invoke-static {v11, v9, v8}, Lc/e/a/b;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    goto :goto_a

    :catchall_9
    move-exception v0

    move-object v1, v0

    .line 28
    :try_start_12
    invoke-static {v1, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :goto_a
    if-eqz p4, :cond_7

    .line 29
    :try_start_13
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object v1, v0

    .line 30
    :try_start_14
    invoke-static {v1, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_7
    :goto_b
    const/16 v1, 0x2800

    :try_start_15
    const-string v0, "/proc/meminfo"

    const-string v7, "meminfo:\n"

    .line 31
    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v11, v7}, Lc/e/a/f$a;->write([B)V

    invoke-static {v11, v0, v1}, Lc/e/a/f;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_c

    :catchall_b
    move-exception v0

    :try_start_16
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :goto_c
    :try_start_17
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "/proc/%d/status"

    new-array v12, v14, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    invoke-static {v0, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "status:\n"

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v11, v7}, Lc/e/a/f$a;->write([B)V

    invoke-static {v11, v0, v1}, Lc/e/a/f;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    goto :goto_d

    :catchall_c
    move-exception v0

    :try_start_18
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    :goto_d
    :try_start_19
    const-string v0, "memory info:\n"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/e/a/f;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_d

    goto :goto_e

    :catchall_d
    move-exception v0

    :try_start_1a
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_e
    invoke-static {v11}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    invoke-static {v11}, Lc/e/a/f;->g(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    const/4 v1, 0x0

    :try_start_1b
    invoke-static {v11, v9, v1}, Lc/e/a/b;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_e

    goto :goto_f

    :catchall_e
    move-exception v0

    move-object v1, v0

    :try_start_1c
    invoke-static {v1, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_f
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-eqz v0, :cond_8

    sput-boolean v10, Lc/e/a/f;->g:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :try_start_1d
    const-string v0, "JAVADUMPFILES"

    invoke-static {v0}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    goto :goto_10

    :catchall_f
    move-exception v0

    :try_start_1e
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_10
    sput-boolean v14, Lc/e/a/f;->g:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_8
    :try_start_1f
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_10

    goto :goto_11

    :catchall_10
    move-exception v0

    move-object v1, v0

    .line 32
    :try_start_20
    invoke-static {v1, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 33
    :goto_11
    invoke-static {v11}, Lc/e/a/f;->b(Ljava/io/OutputStream;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :try_start_21
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_11

    goto :goto_12

    :catchall_11
    move-exception v0

    move-object v1, v0

    .line 34
    :try_start_22
    invoke-static {v1, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    :goto_12
    :try_start_23
    const-string v0, "battery info:\n"

    .line 35
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_12

    goto :goto_13

    :catchall_12
    move-exception v0

    :try_start_24
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    :goto_13
    :try_start_25
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-eqz v0, :cond_9

    sput-boolean v10, Lc/e/a/f;->g:Z

    const-string v0, "BATTERYINFO"

    invoke-static {v0}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V

    sput-boolean v14, Lc/e/a/f;->g:Z

    goto :goto_14

    :cond_9
    invoke-static {}, Lc/e/a/f;->k()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_13

    goto :goto_14

    :catchall_13
    move-exception v0

    :try_start_26
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_a
    :goto_14
    invoke-static {v11}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    invoke-static {v11}, Lc/e/a/f;->c(Ljava/io/OutputStream;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    :try_start_27
    const-string v0, "device status:\n"

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_14

    goto :goto_15

    :catchall_14
    move-exception v0

    :try_start_28
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_15
    sget-boolean v0, Lc/e/a/f;->Y:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    if-eqz v0, :cond_b

    :try_start_29
    sput-boolean v10, Lc/e/a/f;->g:Z

    const-string v0, "DEVICESTATUS"

    invoke-static {v0}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V

    sput-boolean v14, Lc/e/a/f;->g:Z

    goto/16 :goto_1d

    :catchall_15
    move-exception v0

    goto/16 :goto_1c

    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "has root: %s\n"

    new-array v7, v14, [Ljava/lang/Object;

    .line 36
    invoke-static {}, Lc/e/a/a/f;->b()Z

    move-result v12

    if-eqz v12, :cond_c

    :goto_16
    move v12, v14

    goto :goto_17

    .line 37
    :cond_c
    sget-object v12, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v12, :cond_d

    const-string v13, "test-keys"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_16

    :cond_d
    move v12, v10

    .line 38
    :goto_17
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v7, v10

    invoke-static {v0, v1, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_15

    const-string v1, ""

    if-eqz v0, :cond_e

    :try_start_2a
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    goto :goto_18

    :cond_e
    move-object v0, v1

    :goto_18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "build tags: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/e/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, " (default root)"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V

    .line 39
    invoke-static {}, Lc/e/a/a/f;->e()V

    sget-object v0, Lc/e/a/a/f;->e:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    goto :goto_19

    :cond_10
    sget-object v0, Lc/e/a/a/f;->e:Ljava/lang/String;

    .line 40
    :goto_19
    invoke-static {v0}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "su binary: %s\n"

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v0, v12, v10

    invoke-static {v6, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "su permission: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/e/a/a/f;->b()Z

    move-result v6

    if-eqz v6, :cond_11

    const-string v6, "valid ("

    goto :goto_1a

    :cond_11
    const-string v6, "invalid ("

    :goto_1a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Lc/e/a/a/f;->e()V

    sget-object v6, Lc/e/a/a/f;->f:Ljava/lang/String;

    invoke-static {v6}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    goto :goto_1b

    :cond_12
    sget-object v1, Lc/e/a/a/f;->f:Ljava/lang/String;

    .line 42
    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_15

    goto :goto_1d

    :goto_1c
    :try_start_2b
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_13
    :goto_1d
    invoke-static {v11}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    invoke-static {v11}, Lc/e/a/f;->d(Ljava/io/OutputStream;)V

    invoke-static {v11}, Lc/e/a/f;->e(Ljava/io/OutputStream;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    const/4 v1, 0x0

    :try_start_2c
    invoke-static {v11, v9, v8, v1}, Lc/e/a/b;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_16

    goto :goto_1e

    :catchall_16
    move-exception v0

    move-object v1, v0

    :try_start_2d
    invoke-static {v1, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1e
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-eqz v0, :cond_14

    sput-boolean v10, Lc/e/a/f;->g:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    :try_start_2e
    const-string v0, "JAVACACHEDINFOS"

    invoke-static {v0}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_17

    goto :goto_1f

    :catchall_17
    move-exception v0

    :try_start_2f
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1f
    sput-boolean v14, Lc/e/a/f;->g:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    :cond_14
    :try_start_30
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_18

    :goto_20
    const/4 v1, 0x0

    goto :goto_21

    :catchall_18
    move-exception v0

    move-object v1, v0

    .line 43
    :try_start_31
    invoke-static {v1, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    goto :goto_20

    .line 44
    :goto_21
    :try_start_32
    invoke-static {v11, v9, v8, v1}, Lc/e/a/b;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_19

    goto :goto_22

    :catchall_19
    move-exception v0

    move-object v1, v0

    :try_start_33
    invoke-static {v1, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_22
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-eqz v0, :cond_15

    sput-boolean v10, Lc/e/a/f;->g:Z
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    :try_start_34
    const-string v0, "JAVACALLBACKINFOS"

    invoke-static {v0}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1a

    goto :goto_23

    :catchall_1a
    move-exception v0

    :try_start_35
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_23
    sput-boolean v14, Lc/e/a/f;->g:Z

    :cond_15
    invoke-virtual {v11}, Lc/e/a/f$a;->a()V

    invoke-static {v11}, Lc/e/a/f;->a(Lc/e/a/f$a;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    :try_start_36
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_1b

    goto :goto_24

    :catchall_1b
    move-exception v0

    move-object v1, v0

    .line 45
    :try_start_37
    invoke-static {v1, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    :goto_24
    if-eqz v15, :cond_16

    goto :goto_26

    :catchall_1c
    move-exception v0

    const/4 v1, 0x0

    move-object v11, v1

    .line 46
    :goto_25
    :try_start_38
    invoke-static {v0, v11}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_1f

    const-wide/16 v6, 0x0

    cmp-long v0, v3, v6

    if-eqz v0, :cond_16

    :goto_26
    invoke-static {v11}, Lc/e/a/f;->b(Lc/e/a/f$a;)V

    :cond_16
    invoke-static {v11}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-nez v0, :cond_17

    invoke-static/range {p1 .. p1}, Lc/e/a/f;->o(Ljava/lang/String;)V

    :cond_17
    :try_start_39
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-nez v0, :cond_18

    invoke-static/range {p1 .. p1}, Lc/e/a/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1e

    goto :goto_27

    :cond_18
    move-object v0, v2

    .line 47
    :goto_27
    :try_start_3a
    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lc/e/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1d

    goto :goto_28

    :catchall_1d
    move-exception v0

    .line 48
    :try_start_3b
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1e

    goto :goto_28

    :catchall_1e
    move-exception v0

    .line 49
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_28
    return-object v2

    :catchall_1f
    move-exception v0

    move-object v1, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_19

    .line 50
    invoke-static {v11}, Lc/e/a/f;->b(Lc/e/a/f$a;)V

    :cond_19
    invoke-static {v11}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x5

    aput-object p0, v1, v2

    const-string p0, "%d%02d%02d%02d%02d%02d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    array-length v2, p0

    if-lez v2, :cond_3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    array-length v4, p0

    move v5, v1

    move v6, v3

    move v3, v5

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v7, p0, v3

    add-int/lit8 v5, v5, 0x1

    const-string v8, "  at "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v0, v1, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v5, v1

    move v6, v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v1, v5

    :cond_3
    if-nez v1, :cond_4

    const-string p0, "  (no java stack)\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    return-object v0
.end method

.method public static a()V
    .locals 4

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0x193

    invoke-direct {v1, v2}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 v2, 0x2710

    invoke-static {v0, v1, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(I[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1d

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v6, 0xa

    const-wide/16 v7, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    sget-boolean p0, Lc/e/a/f;->Z:Z

    if-eqz p0, :cond_21

    return-void

    :pswitch_1
    sget-boolean p0, Lc/e/a/f;->Z:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long p0, v5, p0

    if-ltz p0, :cond_3

    .line 51
    invoke-static {v0, v7, v8}, Lc/e/a/a/g;->b(IJ)V

    const/16 p0, 0x64

    .line 52
    invoke-static {p0, v1}, Lc/e/a/h;->a(II)V

    .line 53
    invoke-static {v1}, Lc/e/a/f;->d(Z)V

    .line 54
    sget-object p0, Lc/e/a/c;->f:Ljava/lang/String;

    if-nez p0, :cond_2

    const-string p0, "stcb"

    invoke-static {p0}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lc/e/a/c;->f:Ljava/lang/String;

    :cond_2
    sget-object p0, Lc/e/a/c;->f:Ljava/lang/String;

    .line 55
    invoke-static {p0}, Lc/e/a/h;->a(Ljava/lang/String;)Z

    .line 56
    invoke-static {v4, v7, v8}, Lc/e/a/a/g;->a(IJ)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    .line 57
    invoke-static {p0, v7, v8}, Lc/e/a/a/g;->b(IJ)V

    .line 58
    invoke-static {}, Lc/e/a/a/g;->b()V

    .line 59
    invoke-static {v0, v7, v8}, Lc/e/a/a/g;->a(IJ)V

    .line 60
    :goto_1
    invoke-static {v2}, Lc/e/a/f;->a(Ljava/util/Calendar;)V

    :pswitch_2
    invoke-static {}, Lc/e/a/f;->j()V

    return-void

    .line 61
    :pswitch_3
    :try_start_0
    sget-object p0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 62
    invoke-static {p0}, Lc/e/a/f;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    sget p0, Lc/e/a/f;->L:I

    add-int/2addr p0, v1

    sput p0, Lc/e/a/f;->L:I

    if-lt p0, v6, :cond_6

    sget-boolean p0, Lc/e/a/c;->r:Z

    if-eqz p0, :cond_5

    const/16 p0, 0x82

    const-string p1, "(get failed)"

    invoke-static {p0, p1}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_5
    return-void

    .line 63
    :cond_6
    new-instance p0, Lc/e/a/a/d;

    const/16 p1, 0x19e

    invoke-direct {p0, p1}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 v3, 0x3e8

    invoke-static {v0, p0, v3, v4}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 64
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void

    :pswitch_4
    const/16 p0, 0x8

    .line 65
    invoke-static {p0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    return-void

    :pswitch_5
    sget-boolean p0, Lc/e/a/f;->P:Z

    if-nez p0, :cond_7

    invoke-static {}, Lc/e/a/c;->a()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 66
    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p0, p0, Lc/e/a/g/b;->W:Z

    if-eqz p0, :cond_7

    .line 67
    sget-object p0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 68
    invoke-static {p0}, Lc/e/a/f;->a(Landroid/content/Context;)V

    return-void

    :cond_7
    sget-boolean p0, Lc/e/a/f;->P:Z

    if-eqz p0, :cond_9

    invoke-static {}, Lc/e/a/c;->a()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 69
    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p0, p0, Lc/e/a/g/b;->W:Z

    if-nez p0, :cond_9

    .line 70
    :cond_8
    sget-object p0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 71
    :try_start_1
    sget-object p1, Lc/e/a/f;->O:Lc/e/a/f$c;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sput-boolean v2, Lc/e/a/f;->P:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 72
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_9
    return-void

    .line 73
    :pswitch_6
    sget-boolean p0, Lc/e/a/c;->r:Z

    if-eqz p0, :cond_a

    const-string p0, "jni"

    invoke-static {p0}, Lc/e/a/f;->d(Ljava/lang/String;)Z

    move-result p0

    const/16 p1, 0x1c

    invoke-static {p1, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    const-string p0, "anr"

    invoke-static {p0}, Lc/e/a/f;->d(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v3, p0}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_a
    return-void

    :pswitch_7
    invoke-static {v2, v1}, Lc/e/a/f;->a(ZZ)Z

    return-void

    :pswitch_8
    invoke-static {v2}, Lc/e/a/f;->d(Z)V

    return-void

    :pswitch_9
    sget-object p0, Lc/e/a/f;->W:Ljava/lang/Object;

    monitor-enter p0

    :try_start_2
    sget-boolean p1, Lc/e/a/f;->X:Z

    if-nez p1, :cond_10

    .line 74
    sget-object p1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p1, p1, Lc/e/a/g/b;->T:Z

    if-eqz p1, :cond_10

    .line 75
    sget-boolean p1, Lc/e/a/c;->W:Z

    if-nez p1, :cond_b

    invoke-static {}, Lc/e/a/c;->q()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_b
    move v2, v1

    :cond_c
    if-nez v2, :cond_d

    goto :goto_2

    .line 76
    :cond_d
    invoke-static {}, Lc/e/a/c;->k()V

    sget-boolean p1, Lc/e/a/c;->z:Z

    const-wide/16 v2, 0x7d0

    .line 77
    invoke-static {v1, v2, v3}, Lc/e/a/a/g;->b(IJ)V

    .line 78
    invoke-static {}, Lc/e/a/h;->a()V

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-static {}, Lc/e/a/f;->c()V

    .line 79
    :cond_e
    sget-object p1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p1, p1, Lc/e/a/g/b;->T:Z

    if-eqz p1, :cond_f

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-static {p1}, Lc/e/a/f;->a(Ljava/util/Calendar;)V

    :cond_f
    sput-boolean v1, Lc/e/a/f;->X:Z

    monitor-exit p0

    return-void

    :cond_10
    :goto_2
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :pswitch_a
    :try_start_3
    invoke-static {}, Lc/e/a/b;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :catchall_3
    move-exception p0

    .line 81
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void

    .line 82
    :pswitch_b
    sget-boolean p0, Lc/e/a/f;->Z:Z

    if-nez p0, :cond_12

    if-eqz p1, :cond_11

    goto :goto_3

    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_12
    :goto_3
    aget-object p0, p1, v2

    check-cast p0, Ljava/lang/String;

    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, v0, p1}, Lc/e/a/f;->a(Ljava/lang/String;ZZ)V

    return-void

    :pswitch_c
    sput-boolean v2, Lc/e/a/f;->J:Z

    invoke-static {}, Lc/e/a/f;->k()Ljava/lang/StringBuilder;

    move-result-object p0

    .line 83
    sget-object p1, Lc/e/a/c;->m:Ljava/lang/String;

    if-nez p1, :cond_13

    const-string p1, "bati"

    invoke-static {p1}, Lc/e/a/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lc/e/a/c;->m:Ljava/lang/String;

    :cond_13
    sget-object p1, Lc/e/a/c;->m:Ljava/lang/String;

    if-eqz p0, :cond_14

    .line 84
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_14
    return-void

    :pswitch_d
    invoke-static {}, Lc/e/a/f;->n()V

    return-void

    :pswitch_e
    sget-object p0, Lc/e/a/f;->U:Ljava/lang/Object;

    monitor-enter p0

    :try_start_4
    sget-object p1, Lc/e/a/f;->T:Ljava/lang/Runnable;

    if-nez p1, :cond_15

    monitor-exit p0

    return-void

    :cond_15
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 85
    sget-boolean p0, Lc/e/a/c;->x:Z

    if-nez p0, :cond_1e

    .line 86
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result p0

    if-nez p0, :cond_16

    invoke-static {}, Lc/e/a/a/c;->b()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DEBUG"

    invoke-static {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    const-string p0, "unexp"

    invoke-static {p0}, Lc/e/a/f;->d(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "DEBUG"

    const-string p1, "unexp sample miss"

    invoke-static {p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_17
    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget p1, p0, Lc/e/a/g/b;->n:I

    int-to-long v7, p1

    .line 88
    iget p0, p0, Lc/e/a/g/b;->o:I

    .line 89
    invoke-static {v7, v8, p0}, Lcom/uc/crashsdk/JNIBridge;->nativeGenerateUnexpLog(JI)I

    move-result p0

    if-eqz p0, :cond_1d

    const/16 p1, 0xb

    .line 90
    invoke-static {p1, v1}, Lc/e/a/h;->a(II)V

    and-int/lit16 p1, p0, 0x1100

    if-eqz p1, :cond_18

    const/16 p0, 0x1e

    goto :goto_4

    :cond_18
    and-int/lit16 p1, p0, 0x2100

    if-eqz p1, :cond_19

    const/16 p0, 0x1f

    goto :goto_4

    :cond_19
    and-int/lit16 p1, p0, 0x4100

    if-eqz p1, :cond_1a

    const/16 p0, 0x20

    :goto_4
    invoke-static {p0, v1}, Lc/e/a/h;->a(II)V

    goto :goto_5

    :cond_1a
    and-int/lit16 p1, p0, 0x500

    if-eqz p1, :cond_1b

    invoke-static {v6, v1}, Lc/e/a/h;->a(II)V

    goto :goto_5

    :cond_1b
    and-int/lit16 p0, p0, 0x900

    if-eqz p0, :cond_1c

    invoke-static {v3, v1}, Lc/e/a/h;->a(II)V

    .line 91
    :cond_1c
    :goto_5
    invoke-static {v1}, Lc/e/a/f;->a(Z)V

    :cond_1d
    sget-object p0, Lc/e/a/f;->U:Ljava/lang/Object;

    monitor-enter p0

    :try_start_5
    sput-object v5, Lc/e/a/f;->T:Ljava/lang/Runnable;

    monitor-exit p0

    return-void

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p1

    :cond_1e
    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw p1

    :pswitch_f
    invoke-static {}, Lc/e/a/c;->d()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_1f

    move p0, v1

    goto :goto_6

    :cond_1f
    move p0, v2

    :goto_6
    if-eqz p0, :cond_20

    const-wide/16 v7, 0x1

    :cond_20
    invoke-static {v6, v7, v8, v5, v5}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    sput-boolean v1, Lc/e/a/b;->D:Z

    invoke-static {v2}, Lc/e/a/b;->a(Z)Z

    sput-boolean v1, Lc/e/a/f;->J:Z

    invoke-static {}, Lc/e/a/f;->l()V

    invoke-static {}, Lc/e/a/f;->y()V

    return-void

    :cond_21
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .line 289
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->W:Z

    if-nez v0, :cond_0

    return-void

    .line 290
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lc/e/a/f;->O:Lc/e/a/f$c;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Lc/e/a/a/e;->a(I)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0, v1, v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sput-boolean v3, Lc/e/a/f;->P:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    .line 291
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Lc/e/a/f$a;)V
    .locals 5

    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "log end: %s\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lc/e/a/f;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/e/a/f$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a(Lc/e/a/f$a;Ljava/lang/String;J)V
    .locals 5

    const-string v0, "UTF-8"

    sget-boolean v1, Lc/e/a/c;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 92
    invoke-static {v1, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 93
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/uc/crashsdk/JNIBridge;->nativeDumpThreads(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lc/e/a/f;->Y:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x200

    if-ge p2, p3, :cond_1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Can not found "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    move-object v4, v2

    move-object v2, p1

    move-object p1, v4

    goto :goto_1

    :cond_1
    move-object v2, p1

    goto :goto_1

    :cond_2
    const-string p1, "Native not initialized, skip dump!"

    :goto_1
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/f$a;->write([B)V

    const-string p1, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/e/a/f$a;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 94
    invoke-static {p1, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 95
    :goto_2
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    sget-boolean p1, Lc/e/a/f;->Y:Z

    if-nez p1, :cond_4

    const/high16 p1, 0x100000

    invoke-static {p0, v2, p1}, Lc/e/a/f;->b(Ljava/io/OutputStream;Ljava/lang/String;I)I

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_4
    :goto_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p0

    .line 96
    invoke-static {p0, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)V
    .locals 2

    :try_start_0
    const-string v0, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lc/e/a/f;->g:Z

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s^$"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 97
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 98
    :goto_0
    sput-boolean v1, Lc/e/a/f;->g:Z

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 5

    const/4 v0, 0x0

    sput-boolean v0, Lc/e/a/f;->g:Z

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "$^%s`%s`%d`%d,%d^$"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x3

    if-eqz p4, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x4

    if-eqz p5, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v4, p1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 99
    invoke-static {p1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 100
    :goto_2
    sput-boolean v1, Lc/e/a/f;->g:Z

    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "UTF-8"

    invoke-static/range {p1 .. p1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "/storage/emulated"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v4, "getBlockCountLong"

    const-string v5, "getBlockCount"

    invoke-static {v2, v4, v5}, Lc/e/a/f;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "getBlockSizeLong"

    const-string v7, "getBlockSize"

    invoke-static {v2, v6, v7}, Lc/e/a/f;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long v8, v4, v8

    mul-long/2addr v8, v6

    const-wide/16 v10, 0x2800

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    return-void

    :cond_1
    const-string v8, "getAvailableBlocksLong"

    const-string v9, "getAvailableBlocks"

    invoke-static {v2, v8, v9}, Lc/e/a/f;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    const-string v10, "getFreeBlocksLong"

    const-string v11, "getFreeBlocks"

    invoke-static {v2, v10, v11}, Lc/e/a/f;->a(Landroid/os/StatFs;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "%s:\n"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v0, v14, v15

    invoke-static {v2, v12, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  total:      %d kB\n"

    new-array v12, v13, [Ljava/lang/Object;

    long-to-double v4, v4

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    mul-double v4, v4, v16

    long-to-double v13, v6

    mul-double/2addr v4, v13

    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    div-double v4, v4, v18

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v12, v15

    invoke-static {v0, v2, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  available:  %d kB\n"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    long-to-double v8, v8

    mul-double v8, v8, v16

    mul-double/2addr v8, v13

    div-double v8, v8, v18

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v15

    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  free:       %d kB\n"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    long-to-double v8, v10

    mul-double v8, v8, v16

    mul-double/2addr v8, v13

    div-double v8, v8, v18

    double-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v5, v15

    invoke-static {v0, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "  block size: %d B\n\n"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :catchall_1
    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;ZZ)V
    .locals 30

    const-string v0, "crashsdk uploading logs"

    const-string v1, "crashsdk"

    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lc/e/a/f;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static/range {p0 .. p0}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Lc/e/a/i;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Folder not exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "crashsdk"

    invoke-static {v3, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "List folder failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v5, v4, :cond_24

    aget-object v2, v3, v5

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/io/File;)Z

    move-object/from16 v19, v3

    :cond_2
    move/from16 v22, v4

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v3

    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v20, 0x3e8

    if-eqz v3, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    sub-long v22, v22, v24

    div-long v22, v22, v20

    const-wide/16 v20, 0x1e

    cmp-long v3, v22, v20

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    move/from16 v22, v4

    const-string v4, "delete legacy tmp file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/io/File;)Z

    :goto_1
    move/from16 v23, v7

    move/from16 v24, v8

    goto/16 :goto_a

    :cond_4
    move/from16 v22, v4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    move/from16 v23, v7

    move/from16 v24, v8

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_5

    add-int/lit8 v10, v10, 0x1

    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/io/File;)Z

    goto/16 :goto_a

    :cond_5
    const/4 v3, 0x3

    if-eqz p1, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v27

    sub-long v25, v25, v27

    div-long v25, v25, v20

    cmp-long v0, v25, v7

    if-ltz v0, :cond_7

    const-wide/16 v20, 0x2

    cmp-long v0, v25, v20

    if-gez v0, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v20, 0x5

    cmp-long v0, v25, v20

    if-gez v0, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v7, ".log"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    :goto_3
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "file: %s, modify interval: %d s, safe upload: %s"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v28

    const/16 v17, 0x0

    aput-object v28, v4, v17

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    const/16 v18, 0x1

    aput-object v25, v4, v18

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v26, 0x2

    aput-object v25, v4, v26

    invoke-static {v7, v8, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-nez v0, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_a

    .line 101
    :cond_8
    :try_start_1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->J:Z

    if-eqz v0, :cond_a

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "([^_]+)_([^_]+)_([^_]+)\\.crashsdk"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s%s_%s_%s.%s"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v26, v6

    const/4 v6, 0x5

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Lc/e/a/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    aput-object v8, v6, v17

    invoke-static {}, Lc/e/a/f;->u()Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x1

    aput-object v8, v6, v18

    .line 103
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "fg"

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_9
    const-string v8, "bg"

    :goto_4
    const/16 v27, 0x2

    aput-object v8, v6, v27

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const/4 v7, 0x4

    aput-object v0, v6, v7

    .line 104
    invoke-static {v4, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "File "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " matches, rename to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "crashsdk"

    invoke-static {v4, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :cond_a
    move/from16 v26, v6

    move-object v3, v2

    :goto_5
    if-eq v3, v2, :cond_b

    add-int/lit8 v14, v14, 0x1

    :cond_b
    move-object v2, v3

    const/4 v3, 0x0

    goto :goto_7

    :catchall_1
    move-exception v0

    move/from16 v26, v6

    :goto_6
    const/4 v3, 0x0

    .line 105
    :try_start_3
    invoke-static {v0, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 106
    :goto_7
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc/e/a/f;->k(Ljava/lang/String;)[Z

    move-result-object v6

    aget-boolean v0, v6, v3

    const/4 v3, 0x1

    aget-boolean v7, v6, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-eqz v0, :cond_c

    .line 107
    :try_start_4
    invoke-static {v4}, Lc/e/a/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v3, v0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v3, v0

    const/4 v8, 0x0

    .line 108
    :try_start_5
    invoke-static {v3, v8}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_c
    move-object v3, v4

    :goto_8
    if-eqz v7, :cond_d

    .line 109
    :try_start_6
    invoke-static {v3}, Lc/e/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_d
    const/4 v8, 0x0

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v7, v0

    const/4 v8, 0x0

    .line 110
    :try_start_7
    invoke-static {v7, v8}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_9
    if-eq v4, v3, :cond_10

    .line 111
    aget-boolean v0, v6, v8

    if-eqz v0, :cond_e

    add-int/lit8 v9, v9, 0x1

    :cond_e
    const/4 v2, 0x1

    aget-boolean v0, v6, v2

    if-eqz v0, :cond_f

    add-int/lit8 v12, v12, 0x1

    :cond_f
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_10
    if-eq v2, v2, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 112
    :cond_11
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->z:I

    if-lez v0, :cond_12

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v6, v0

    cmp-long v0, v3, v6

    if-ltz v0, :cond_12

    add-int/lit8 v13, v13, 0x1

    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/io/File;)Z

    move/from16 v6, v26

    :goto_a
    move-object/from16 v7, p0

    move/from16 v8, v24

    goto/16 :goto_14

    :cond_12
    new-instance v0, Lc/e/a/f$d;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lc/e/a/f$d;-><init>(B)V

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lc/e/a/f$d;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v0, Lc/e/a/f$d;->a:J

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_13

    new-instance v4, Lc/e/a/a/d;

    const/16 v6, 0x1c3

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v8, v7

    const/4 v7, 0x1

    aput-object v0, v8, v7

    invoke-direct {v4, v6, v8}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lc/e/a/f;->a(Ljava/lang/String;Lc/e/a/a/d;)Z

    .line 116
    :cond_13
    sget-object v3, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-wide v3, v3, Lc/e/a/g/b;->A:J

    .line 117
    sget-object v6, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v6, v6, Lc/e/a/g/b;->B:I

    .line 118
    sget-object v7, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v7, v7, Lc/e/a/g/b;->C:I

    const-wide/16 v20, 0x0

    cmp-long v8, v3, v20

    if-ltz v8, :cond_14

    move/from16 v20, v9

    .line 119
    iget-wide v8, v0, Lc/e/a/f$d;->b:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v28

    add-long v8, v8, v28

    cmp-long v8, v8, v3

    if-lez v8, :cond_15

    const/4 v8, 0x1

    iput-boolean v8, v0, Lc/e/a/f$d;->e:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Reach max upload bytes: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_14
    move/from16 v20, v9

    .line 120
    :cond_15
    sget-object v3, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v3, v3, Lc/e/a/g/b;->b:Ljava/lang/String;

    invoke-static {v3}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_b

    :cond_16
    sget-object v3, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v3, v3, Lc/e/a/g/b;->c:Ljava/lang/String;

    invoke-static {v3}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    :goto_b
    const/4 v3, 0x1

    goto :goto_c

    :cond_17
    sget-object v3, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v3, v3, Lc/e/a/g/b;->d:Ljava/lang/String;

    invoke-static {v3}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    :goto_c
    if-nez v3, :cond_19

    .line 121
    invoke-static {v2}, Lc/e/a/f;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_18

    if-ltz v6, :cond_19

    iget v3, v0, Lc/e/a/f$d;->c:I

    if-lt v3, v6, :cond_19

    const/4 v3, 0x1

    iput-boolean v3, v0, Lc/e/a/f$d;->g:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reach max upload builtin log count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_18
    if-ltz v7, :cond_19

    iget v3, v0, Lc/e/a/f$d;->d:I

    if-lt v3, v7, :cond_19

    const/4 v3, 0x1

    iput-boolean v3, v0, Lc/e/a/f$d;->f:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reach max upload custom log count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d

    :goto_e
    invoke-static {v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    :cond_19
    iget-boolean v3, v0, Lc/e/a/f$d;->e:Z

    if-eqz v3, :cond_1a

    const/4 v8, 0x1

    move-object/from16 v7, p0

    move/from16 v9, v20

    :goto_f
    move/from16 v6, v26

    goto/16 :goto_14

    :cond_1a
    iget-boolean v3, v0, Lc/e/a/f$d;->g:Z

    if-eqz v3, :cond_1b

    move-object/from16 v7, p0

    move/from16 v9, v20

    move/from16 v8, v24

    move/from16 v6, v26

    const/16 v16, 0x1

    goto/16 :goto_14

    :cond_1b
    iget-boolean v3, v0, Lc/e/a/f$d;->f:Z

    if-eqz v3, :cond_1c

    move-object/from16 v7, p0

    move/from16 v9, v20

    move/from16 v8, v24

    move/from16 v6, v26

    const/16 v23, 0x1

    goto/16 :goto_14

    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    sget-object v6, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v6, v6, Lc/e/a/g/b;->a:Ljava/lang/String;

    .line 124
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1d

    const-string v4, "_"

    const/16 v7, 0xa

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/16 v7, 0x9

    if-ne v4, v7, :cond_1d

    const/4 v4, 0x1

    aget-object v3, v3, v4

    goto :goto_10

    :cond_1d
    move-object v3, v6

    :goto_10
    if-eqz v3, :cond_1e

    invoke-static {}, Lc/e/a/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_11

    :cond_1e
    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v7, p0

    invoke-static {v2, v4, v7}, Lc/e/a/a/b;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Uploaded log: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "crashsdk"

    invoke-static {v8, v4, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_1f

    const/16 v3, 0xd

    const/4 v4, 0x1

    .line 126
    invoke-static {v3, v4}, Lc/e/a/h;->a(II)V

    .line 127
    :cond_1f
    iget-wide v3, v0, Lc/e/a/f$d;->b:J

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v3, v8

    iput-wide v3, v0, Lc/e/a/f$d;->b:J

    invoke-static {v2}, Lc/e/a/f;->b(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget v3, v0, Lc/e/a/f$d;->c:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v0, Lc/e/a/f$d;->c:I

    goto :goto_12

    :cond_20
    const/4 v4, 0x1

    iget v3, v0, Lc/e/a/f$d;->d:I

    add-int/2addr v3, v4

    iput v3, v0, Lc/e/a/f$d;->d:I

    .line 128
    :goto_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    new-instance v4, Lc/e/a/a/d;

    const/16 v8, 0x1c4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v3, v9, v15

    const/4 v15, 0x1

    aput-object v0, v9, v15

    invoke-direct {v4, v8, v9}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lc/e/a/f;->a(Ljava/lang/String;Lc/e/a/a/d;)Z

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const/4 v2, 0x0

    goto :goto_13

    :cond_21
    add-int/lit8 v2, v15, 0x1

    if-eqz v3, :cond_22

    const/16 v0, 0xe

    const/4 v3, 0x1

    .line 130
    invoke-static {v0, v3}, Lc/e/a/h;->a(II)V

    :cond_22
    :goto_13
    const/4 v3, 0x3

    if-lt v2, v3, :cond_23

    const-string v0, "Upload failed 3 times continuously, abort upload!"

    const-string v2, "crashsdk"

    .line 131
    invoke-static {v2, v0, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move/from16 v9, v20

    goto :goto_15

    :cond_23
    move v15, v2

    move/from16 v9, v20

    move/from16 v8, v24

    goto/16 :goto_f

    :goto_14
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v22

    move/from16 v7, v23

    goto/16 :goto_0

    :cond_24
    move/from16 v26, v6

    move/from16 v23, v7

    move/from16 v24, v8

    :goto_15
    if-lez v11, :cond_25

    const/16 v0, 0xc8

    invoke-static {v0, v11}, Lc/e/a/h;->a(II)V

    :cond_25
    if-lez v10, :cond_26

    const/16 v0, 0xf

    invoke-static {v0, v10}, Lc/e/a/h;->a(II)V

    :cond_26
    if-lez v13, :cond_27

    const/16 v0, 0x11

    invoke-static {v0, v13}, Lc/e/a/h;->a(II)V

    :cond_27
    if-eqz v24, :cond_28

    const/16 v0, 0x13

    const/4 v2, 0x1

    .line 132
    invoke-static {v0, v2}, Lc/e/a/h;->a(II)V

    goto :goto_16

    :cond_28
    const/4 v2, 0x1

    :goto_16
    if-eqz v16, :cond_29

    const/16 v0, 0x14

    invoke-static {v0, v2}, Lc/e/a/h;->a(II)V

    :cond_29
    if-eqz v23, :cond_2a

    const/16 v0, 0x15

    invoke-static {v0, v2}, Lc/e/a/h;->a(II)V

    :cond_2a
    if-nez v24, :cond_2b

    if-nez v16, :cond_2b

    if-eqz v23, :cond_2c

    :cond_2b
    const/16 v0, 0x12

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lc/e/a/h;->a(II)V

    :cond_2c
    if-lez v9, :cond_2d

    const/16 v0, 0x18

    .line 133
    invoke-static {v0, v9}, Lc/e/a/h;->a(II)V

    :cond_2d
    if-lez v12, :cond_2e

    const/16 v0, 0xc9

    invoke-static {v0, v12}, Lc/e/a/h;->a(II)V

    :cond_2e
    if-lez v14, :cond_2f

    const/16 v0, 0x19

    invoke-static {v0, v14}, Lc/e/a/h;->a(II)V

    :cond_2f
    if-lez v26, :cond_31

    const/16 v0, 0x1a

    move/from16 v2, v26

    invoke-static {v0, v2}, Lc/e/a/h;->a(II)V

    goto :goto_17

    :cond_30
    const-string v0, "upload url is empty!"

    const-string v2, "crashsdk"

    invoke-static {v2, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_31
    :goto_17
    if-eqz p2, :cond_32

    :goto_18
    :try_start_8
    sget-object v0, Lc/e/a/f;->m:Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_19

    :catchall_4
    move-exception v0

    const/4 v2, 0x0

    .line 134
    :try_start_9
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz p2, :cond_32

    goto :goto_18

    .line 135
    :goto_19
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_32
    monitor-exit v1

    return-void

    :catchall_5
    move-exception v0

    goto :goto_1a

    :catchall_6
    move-exception v0

    move-object v2, v0

    if-eqz p2, :cond_33

    sget-object v0, Lc/e/a/f;->m:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :cond_33
    throw v2

    :goto_1a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc/e/a/f;->a([Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "DEBUG"

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    .locals 3

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "[DEBUG] CrashHandler occurred new exception:\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v2, "\n\n"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 252
    invoke-static {p1, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/util/Calendar;)V
    .locals 9

    .line 253
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->b0:Z

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->add(II)V

    const/16 v2, 0xb

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    const-wide/32 v7, 0x36ee80

    cmp-long p0, v0, v7

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x3e8

    add-long/2addr v7, v0

    :goto_0
    new-instance p0, Lc/e/a/a/d;

    const/16 v0, 0x19f

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {p0, v0, v1}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v4, p0, v7, v8}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static a(Z)V
    .locals 11

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lc/e/a/c;->A()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc/e/a/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 255
    :cond_1
    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v2, v2, Lc/e/a/g/b;->h:I

    .line 256
    sget-object v3, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v3, v3, Lc/e/a/g/b;->i:I

    .line 257
    array-length v4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_2

    return-void

    :cond_2
    array-length v4, v1

    move v5, v0

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v8, v1, v5

    invoke-static {v8}, Lc/e/a/f;->b(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz p0, :cond_5

    if-lt v6, v2, :cond_5

    sub-int/2addr v6, v2

    add-int/lit8 v2, v6, 0x1

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-nez p0, :cond_6

    if-lt v7, v3, :cond_6

    sub-int/2addr v7, v3

    add-int/lit8 p0, v7, 0x1

    goto :goto_3

    :cond_6
    move p0, v0

    :goto_3
    if-nez v2, :cond_7

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v3, Lc/e/a/f$b;

    invoke-direct {v3, v0}, Lc/e/a/f$b;-><init>(B)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v1

    move v6, p0

    move v4, v0

    move v5, v2

    :goto_4
    if-ge v4, v3, :cond_b

    aget-object v7, v1, v4

    invoke-static {v7}, Lc/e/a/f;->b(Ljava/io/File;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "crashsdk"

    if-eqz v8, :cond_8

    if-lez v5, :cond_8

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Delete oldest crash log: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_8
    if-nez v8, :cond_9

    if-lez v6, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Delete oldest custom log: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    add-int/lit8 v6, v6, -0x1

    :cond_9
    :goto_5
    if-nez v5, :cond_a

    if-eqz v6, :cond_b

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    const/16 v1, 0x10

    add-int v3, v2, p0

    invoke-static {v1, v3}, Lc/e/a/h;->a(II)V

    if-lez v2, :cond_c

    const/16 v1, 0x16

    invoke-static {v1, v2}, Lc/e/a/h;->a(II)V

    :cond_c
    if-lez p0, :cond_d

    const/16 v1, 0x17

    invoke-static {v1, p0}, Lc/e/a/h;->a(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_d
    return-void

    :catchall_0
    move-exception p0

    .line 258
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    const/4 v12, 0x0

    if-nez v10, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_0
    :try_start_1
    new-instance v14, Lc/e/a/f$a;

    invoke-direct {v14, v2, v3, v13}, Lc/e/a/f$a;-><init>(JLjava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    sget-object v15, Lc/e/a/f;->q:Ljava/util/ArrayList;

    monitor-enter v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sput-object v1, Lc/e/a/f;->s:Ljava/lang/String;

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x7e

    sget-object v11, Lc/e/a/f;->s:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_1
    monitor-exit v15

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    :goto_1
    const/4 v14, 0x0

    .line 259
    :goto_2
    invoke-static {v0, v12}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_3
    if-nez v14, :cond_2

    return v12

    :cond_2
    const-wide/16 v16, 0x1

    and-long v16, p5, v16

    cmp-long v0, v16, v8

    const/4 v11, 0x1

    if-eqz v0, :cond_3

    move-object/from16 v15, p4

    .line 260
    :try_start_5
    invoke-static {v14, v1, v15}, Lc/e/a/f;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    goto/16 :goto_d

    :cond_3
    :goto_4
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lc/e/a/f$a;->write([B)V

    const-string v0, "\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lc/e/a/f$a;->write([B)V

    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    :try_start_7
    invoke-static {v0, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_5
    invoke-static {v14}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    const-wide/16 v0, 0x4

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_4

    invoke-static {v14}, Lc/e/a/f;->b(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v1, v0

    .line 261
    :try_start_9
    invoke-static {v1, v12}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_4
    :goto_6
    if-eqz v4, :cond_5

    .line 262
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    const-string v0, "UTF-8"

    invoke-static {v14, v0, v4}, Lc/e/a/b;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v14, v0, v1, v5}, Lc/e/a/b;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    const-string v0, "UTF-8"

    const-string v1, "--- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---\n"

    invoke-static {v14, v0, v1, v6}, Lc/e/a/b;->b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_7
    if-eqz v7, :cond_8

    :try_start_a
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    :try_start_b
    invoke-static {v1, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :goto_7
    :try_start_c
    const-string v0, "threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    :try_start_d
    invoke-static {v0, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_8
    sput-boolean v12, Lc/e/a/f;->g:Z

    sput-object v7, Lc/e/a/f;->u:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-static {v14, v7, v2, v3}, Lc/e/a/f;->a(Lc/e/a/f$a;Ljava/lang/String;J)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception v0

    move-object v1, v0

    :try_start_f
    invoke-static {v1, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_9
    const/4 v1, 0x0

    sput-object v1, Lc/e/a/f;->u:Ljava/lang/String;

    sput-boolean v11, Lc/e/a/f;->g:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :cond_8
    const-wide/16 v0, 0x8

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_9

    if-nez v10, :cond_9

    :try_start_10
    invoke-virtual {v14}, Ljava/io/OutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object v1, v0

    :try_start_11
    invoke-static {v1, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :goto_a
    :try_start_12
    const-string v0, "all threads dump:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lc/e/a/f$a;->write([B)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception v0

    :try_start_13
    invoke-static {v0, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_b
    sput-boolean v11, Lc/e/a/f;->t:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :try_start_14
    const-string v0, "all"

    invoke-static {v14, v0, v8, v9}, Lc/e/a/f;->a(Lc/e/a/f$a;Ljava/lang/String;J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto :goto_c

    :catchall_c
    move-exception v0

    :try_start_15
    invoke-static {v0, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_c
    sput-boolean v12, Lc/e/a/f;->t:Z

    :cond_9
    const-wide/16 v0, 0x10

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_a

    invoke-static {v14}, Lc/e/a/f;->f(Ljava/io/OutputStream;)V

    :cond_a
    const-wide/16 v0, 0x2

    and-long v0, p5, v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_b

    invoke-virtual {v14}, Lc/e/a/f$a;->a()V

    invoke-static {v14}, Lc/e/a/f;->a(Lc/e/a/f$a;)V

    :cond_b
    if-eqz v10, :cond_c

    invoke-static {v14}, Lc/e/a/f;->b(Lc/e/a/f$a;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto :goto_e

    :goto_d
    :try_start_16
    invoke-static {v0, v14}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    :cond_c
    :goto_e
    invoke-static {v14}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    :try_start_17
    sget-object v1, Lc/e/a/f;->q:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_e

    :try_start_18
    sget v0, Lc/e/a/f;->r:I

    add-int/2addr v0, v11

    sput v0, Lc/e/a/f;->r:I

    sget-object v0, Lc/e/a/f;->s:Ljava/lang/String;

    if-eqz v0, :cond_f

    sget-object v0, Lc/e/a/f;->q:Ljava/util/ArrayList;

    sget-object v2, Lc/e/a/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lc/e/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_d

    sget-object v0, Lc/e/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_d
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x7f

    sget-object v2, Lc/e/a/f;->s:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_e
    const/4 v2, 0x0

    sput-object v2, Lc/e/a/f;->s:Ljava/lang/String;

    :cond_f
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_10

    const/16 v0, 0x19

    sget v2, Lc/e/a/f;->r:I

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/uc/crashsdk/JNIBridge;->set(IJ)J

    :cond_10
    monitor-exit v1

    goto :goto_f

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_d

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_e

    :catchall_e
    move-exception v0

    .line 263
    invoke-static {v0, v12}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_f
    return v11

    :catchall_f
    move-exception v0

    move-object v1, v0

    .line 264
    invoke-static {v14}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v13}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;Lc/e/a/a/d;)Z
    .locals 5

    sget-object v0, Lc/e/a/f;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 265
    :try_start_2
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 266
    :try_start_3
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_8

    :catch_1
    move-exception v1

    .line 267
    :try_start_4
    invoke-static {v1, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_1

    .line 268
    :try_start_5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_2
    move-exception v3

    .line 269
    :try_start_6
    invoke-static {v3, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 270
    :cond_1
    :goto_2
    :try_start_7
    invoke-virtual {p1}, Lc/e/a/a/d;->a()Z

    move-result p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz p0, :cond_2

    :try_start_8
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catch_3
    move-exception p0

    .line 271
    :try_start_9
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_6

    .line 272
    :cond_2
    :goto_3
    :try_start_a
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_2
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_b
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    :catch_5
    move-exception p0

    .line 273
    :try_start_c
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 274
    :cond_3
    :goto_4
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catch_6
    move-exception p0

    goto :goto_5

    :catch_7
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    :goto_5
    move p1, v2

    .line 275
    :goto_6
    :try_start_d
    invoke-static {p0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_3

    .line 276
    :goto_7
    :try_start_e
    monitor-exit v0

    return p1

    :goto_8
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p1

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p1}, Lc/e/a/f;->l(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lc/e/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "Custom log \'%s\' has reach max count!"

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return v0

    :cond_0
    return v1
.end method

.method public static a(Ljava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p1

    sget-object v1, Lc/e/a/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v12, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing java crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return v12

    :cond_0
    sget-boolean v1, Lc/e/a/f;->Y:Z

    if-nez v1, :cond_2

    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v14, v12

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v14, 0x1

    :goto_1
    if-nez v14, :cond_3

    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lc/e/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_3
    invoke-static/range {p1 .. p1}, Lc/e/a/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "custom log sample miss: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    .line 277
    :cond_4
    sget-boolean v1, Lc/e/a/c;->r:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v12

    :goto_2
    if-eqz v1, :cond_6

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Processing native crash, skip generate custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return v12

    :cond_6
    if-eqz p0, :cond_13

    if-nez v0, :cond_7

    goto/16 :goto_8

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lc/e/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v1, 0x20

    and-long v1, p2, v1

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-eqz v1, :cond_8

    const/4 v11, 0x1

    goto :goto_3

    :cond_8
    move v11, v12

    :goto_3
    if-eqz v14, :cond_b

    sget-boolean v1, Lc/e/a/c;->r:Z

    if-eqz v1, :cond_9

    const-string v1, "custom"

    invoke-static {v15, v1, v0, v11}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v1

    goto :goto_4

    :cond_9
    move-wide/from16 v1, v16

    :goto_4
    cmp-long v3, v1, v16

    if-nez v3, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "skip custom log: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v12

    :cond_a
    move-wide/from16 v18, v1

    goto :goto_5

    :cond_b
    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0, v11}, Lc/e/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_c

    return v12

    :cond_c
    invoke-static {}, Lc/e/a/i;->j()V

    invoke-static {v12}, Lc/e/a/f;->a(Z)V

    move-wide/from16 v18, v16

    :goto_5
    sget-object v20, Lc/e/a/f;->o:Ljava/lang/Object;

    monitor-enter v20

    move-object v1, v15

    move-wide/from16 v2, v18

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move v13, v11

    move-object/from16 v11, p7

    :try_start_0
    invoke-static/range {v1 .. v11}, Lc/e/a/f;->a(Ljava/lang/String;JLjava/lang/StringBuffer;Ljava/lang/String;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_d

    if-nez v14, :cond_d

    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v2, v0, v12, v13}, Lc/e/a/a/g;->a(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    :cond_d
    cmp-long v2, v18, v16

    if-eqz v2, :cond_e

    .line 280
    invoke-static/range {v18 .. v19}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_e
    if-nez v1, :cond_f

    return v12

    :cond_f
    if-nez v14, :cond_10

    invoke-static {v15}, Lc/e/a/f;->o(Ljava/lang/String;)V

    :cond_10
    if-nez v14, :cond_11

    invoke-static {v15}, Lc/e/a/f;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 281
    :cond_11
    :try_start_1
    invoke-static {}, Lc/e/a/f;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Lc/e/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 282
    invoke-static {v0, v12}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_6
    if-eqz v13, :cond_12

    if-nez v14, :cond_12

    const/4 v1, 0x1

    .line 283
    :try_start_2
    invoke-static {v1, v12}, Lc/e/a/f;->a(ZZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 284
    invoke-static {v2, v12}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_7

    :cond_12
    const/4 v1, 0x1

    :goto_7
    return v1

    :catchall_2
    move-exception v0

    .line 285
    :try_start_3
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_13
    :goto_8
    return v12
.end method

.method public static a(ZZ)Z
    .locals 7

    sget-boolean v0, Lc/e/a/f;->d:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    invoke-static {v1, v1}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_0
    sput-boolean v1, Lc/e/a/f;->d:Z

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lc/e/a/f;->s()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "CrashHandler url is empty!"

    const-string p1, "crashsdk"

    invoke-static {p1, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    sget-object v3, Lc/e/a/f;->m:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v4, Lc/e/a/a/d;

    const/16 v5, 0x196

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v6, v1

    const/4 p1, 0x2

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v6, p1

    invoke-direct {v4, v5, v6}, Lc/e/a/a/d;-><init>(I[Ljava/lang/Object;)V

    invoke-static {p0, v4}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    :try_start_2
    sget-object p0, Lc/e/a/f;->m:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 286
    :try_start_3
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 287
    :cond_3
    :goto_0
    monitor-exit v3

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 288
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return v0
.end method

.method public static b(Ljava/io/OutputStream;Ljava/lang/String;I)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x1

    const-string v5, "UTF-8"

    if-eqz v3, :cond_8

    const/16 p1, 0x400

    move v3, p1

    move-object p1, v0

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    if-lez v3, :cond_1

    .line 1
    :try_start_1
    new-array p1, v3, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    div-int/lit8 v3, v3, 0x2

    const/16 v6, 0x10

    if-ge v3, v6, :cond_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "(alloc buffer failed!)\n"

    .line 2
    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    return v1

    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v0, v1

    move v2, v0

    move v6, v2

    :cond_3
    :goto_1
    :try_start_4
    invoke-virtual {v3, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    add-int/2addr v0, v7

    sub-int v8, p2, v2

    add-int/lit8 v9, v8, 0x20

    if-le v7, v9, :cond_4

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    if-lez v8, :cond_5

    if-nez v6, :cond_5

    invoke-virtual {p0, p1, v1, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/2addr v2, v8

    :cond_5
    if-nez v6, :cond_3

    if-lt v8, v7, :cond_7

    if-lt v2, p2, :cond_6

    goto :goto_3

    :cond_6
    move v6, v1

    goto :goto_1

    :cond_7
    :goto_3
    move v6, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v0, v3

    goto :goto_4

    :cond_8
    :try_start_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "file: \'"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' not exists!\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v3, v0

    move v0, v1

    move v2, v0

    :cond_9
    if-lez v2, :cond_a

    :try_start_6
    const-string p1, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    :cond_a
    if-ge v2, v0, :cond_b

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "(truncated %d bytes)\n"

    new-array v4, v4, [Ljava/lang/Object;

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {p1, p2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_b
    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_2
    move-exception p1

    move v2, v1

    :goto_4
    :try_start_7
    invoke-static {p1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    :goto_5
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return v2

    :catchall_3
    move-exception p0

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b()V
    .locals 4

    sget-boolean v0, Lc/e/a/f;->X:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-instance v1, Lc/e/a/a/d;

    const/16 v2, 0x198

    invoke-direct {v1, v2}, Lc/e/a/a/d;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(I)V
    .locals 3

    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x19a

    invoke-direct {v0, v1}, Lc/e/a/a/d;-><init>(I)V

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v1, p0

    const/4 p0, 0x0

    invoke-static {p0, v0, v1, v2}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static b(Lc/e/a/f$a;)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lc/e/a/f;->g:Z

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LOG_END"

    invoke-static {v2}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lc/e/a/f$a;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 3
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_0
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lc/e/a/f;->g:Z

    return-void
.end method

.method public static b(Ljava/io/OutputStream;)V
    .locals 11

    const-string v0, "-b"

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "logcat:\n"

    invoke-virtual {v4, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 5
    sget-object v4, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v4, v4, Lc/e/a/g/b;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-gtz v4, :cond_0

    :try_start_1
    const-string v0, "[DEBUG] custom java logcat lines count is 0!\n"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    return-void

    .line 7
    :cond_0
    :try_start_3
    sget-object v4, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v4, v4, Lc/e/a/g/b;->j:I

    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const/16 v6, 0xa

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "logcat"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "-d"

    aput-object v7, v6, v2

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v9, 0x3

    const-string v10, "events"

    aput-object v10, v6, v9

    const/4 v9, 0x4

    aput-object v0, v6, v9

    const/4 v0, 0x5

    const-string v9, "main"

    aput-object v9, v6, v0

    const/4 v0, 0x6

    const-string v9, "-v"

    aput-object v9, v6, v0

    const/4 v0, 0x7

    const-string v9, "threadtime"

    aput-object v9, v6, v0

    const/16 v0, 0x8

    const-string v9, "-t"

    aput-object v9, v6, v0

    const/16 v0, 0x9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const/16 v0, 0x2000

    move v6, v0

    move-object v0, v3

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-lez v6, :cond_2

    .line 9
    :try_start_4
    new-instance v9, Ljava/io/BufferedReader;

    invoke-direct {v9, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v0, v9

    goto :goto_1

    :catchall_1
    :try_start_5
    div-int/lit8 v6, v6, 0x2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const/16 v9, 0x200

    if-ge v6, v9, :cond_1

    :cond_2
    if-nez v0, :cond_3

    :try_start_6
    const-string v3, "[DEBUG] alloc buffer failed!\n"

    .line 10
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-static {v1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_2
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    return-void

    :cond_3
    :try_start_8
    sput-boolean v8, Lc/e/a/f;->g:Z

    move v3, v8

    move v5, v3

    :cond_4
    :goto_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    add-int/lit8 v3, v3, 0x1

    if-ge v5, v4, :cond_4

    const-string v9, " I auditd "

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, " I liblog "

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    const-string v6, "\n"

    invoke-virtual {v6, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    :try_start_9
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "[DEBUG] Read %d lines, wrote %d lines.\n"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v2

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v1

    :try_start_a
    invoke-static {v1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_4
    sput-boolean v2, Lc/e/a/f;->g:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v1

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    :goto_5
    :try_start_b
    sput-boolean v2, Lc/e/a/f;->g:Z

    invoke-static {v1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :goto_6
    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_6
    move-exception p0

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static b(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v1, p0

    const-string v2, ""

    const-string v3, "\n"

    const-string v4, "UTF-8"

    :try_start_0
    const-string v0, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Basic Information: \'pid: %d/tid: %d/time: %s\'\n"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {}, Lc/e/a/f;->u()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "Cpu Information: \'abi: %s/processor: %s/hardware: %s\'\n"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {}, Lc/e/a/f;->o()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    sget-object v11, Lc/e/a/f;->k:Ljava/lang/String;

    invoke-static {v11}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lc/e/a/f;->h()V

    :cond_0
    sget-object v11, Lc/e/a/f;->k:Ljava/lang/String;

    aput-object v11, v10, v8

    .line 11
    sget-object v11, Lc/e/a/f;->j:Ljava/lang/String;

    invoke-static {v11}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {}, Lc/e/a/f;->h()V

    :cond_1
    sget-object v11, Lc/e/a/f;->j:Ljava/lang/String;

    aput-object v11, v10, v6

    .line 12
    invoke-static {v0, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1
    const/4 v9, 0x4

    :try_start_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Mobile Information: \'model: %s/version: %s/sdk: %d\'\n"

    new-array v11, v5, [Ljava/lang/Object;

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v12, v11, v7

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v12, v11, v8

    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v6

    invoke-static {v0, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "Build fingerprint: \'"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Runtime Information: \'start: %s/maxheap: %s/primaryabi: %s/ground: %s\'\n"

    new-array v11, v9, [Ljava/lang/Object;

    new-instance v12, Ljava/util/Date;

    sget-wide v13, Lc/e/a/f;->b:J

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-static {v12}, Lc/e/a/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v8

    .line 13
    sget-object v12, Lc/e/a/a/f;->d:Ljava/lang/String;

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    move-object v12, v2

    :goto_2
    aput-object v12, v11, v6

    .line 14
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "fg"

    goto :goto_3

    :cond_3
    const-string v12, "bg"

    :goto_3
    aput-object v12, v11, v5

    invoke-static {v0, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_4
    :try_start_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "Application Information: \'version: %s/subversion: %s/buildseq: %s/versioncode: %d\'\n"

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {}, Lc/e/a/i;->c()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v7

    invoke-static {}, Lc/e/a/i;->d()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {}, Lc/e/a/i;->e()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    .line 15
    sget v12, Lc/e/a/b;->g:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    invoke-static {}, Lc/e/a/b;->m()Z

    :cond_4
    sget v12, Lc/e/a/b;->g:I

    .line 16
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-static {v0, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v0, "0"

    sget-boolean v10, Lc/e/a/c;->r:Z

    if-eqz v10, :cond_5

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    invoke-static {v8, v10, v11, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v10, v11, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v0, v12

    goto :goto_5

    :cond_5
    move-object v10, v2

    :goto_5
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "CrashSDK Information: \'version: %s/nativeseq: %s/javaseq: %s/arch: %s/target: %s\'\n"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    const-string v14, "3.2.2.2"

    aput-object v14, v13, v7

    aput-object v0, v13, v8

    const-string v0, "200521164010"

    aput-object v0, v13, v6

    aput-object v10, v13, v5

    const-string v0, "release"

    aput-object v0, v13, v9

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    if-nez p1, :cond_6

    move-object v0, v2

    goto :goto_6

    :cond_6
    move-object/from16 v0, p1

    :goto_6
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/2addr v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "Report Name: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_7
    :try_start_4
    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-eqz v0, :cond_7

    const-string v0, "UUID"

    invoke-static {v0}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    sget-object v0, Lc/e/a/f;->z:Ljava/lang/String;

    :goto_8
    const-string v5, "UUID: %s\n"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Log Type: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    .line 17
    :goto_9
    :try_start_5
    sget-object v0, Lc/e/a/c;->b0:Ljava/lang/String;

    if-nez v0, :cond_8

    move-object v0, v2

    .line 18
    :cond_8
    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v0, "(none)"

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Activity: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_a
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    :try_start_6
    invoke-static {p0, v4}, Lc/e/a/b;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-boolean v0, Lc/e/a/f;->Y:Z

    if-eqz v0, :cond_a

    sput-boolean v7, Lc/e/a/f;->g:Z

    const-string v0, "HEADER"

    invoke-static {v0}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    sput-boolean v8, Lc/e/a/f;->g:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_a
    :goto_b
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lc/e/a/f;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lc/e/a/f;->v:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lc/e/a/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 19
    :try_start_0
    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v1, v1, Lc/e/a/g/b;->q:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lc/e/a/f;->d:Z

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 21
    sget-object v1, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v1, v1, Lc/e/a/g/b;->r:Z

    :cond_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p0, :cond_4

    .line 22
    invoke-static {}, Lc/e/a/f;->s()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lc/e/a/f;->r()V

    invoke-static {p0, v0, v0}, Lc/e/a/f;->a(Ljava/lang/String;ZZ)V

    :cond_3
    return-void

    :cond_4
    invoke-static {v2, v0}, Lc/e/a/f;->a(ZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 23
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    iget v4, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    if-ne v4, v1, :cond_2

    sput-boolean v3, Lc/e/a/f;->M:Z

    invoke-static {}, Lc/e/a/f;->g()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "ANR occurred in process: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "crashsdk"

    invoke-static {v0, p0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean p0, Lc/e/a/c;->r:Z

    if-eqz p0, :cond_4

    const/16 p0, 0x82

    iget-object v0, v2, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_4
    move v0, v3

    :cond_5
    if-nez v0, :cond_6

    sget-boolean p0, Lc/e/a/c;->r:Z

    if-eqz p0, :cond_6

    invoke-static {}, Lc/e/a/f;->j()V

    :cond_6
    return v3
.end method

.method public static b(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gtz v2, :cond_1

    return v1

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "java"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ucebujava"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "jni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ucebujni"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "unexp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "anr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v3
.end method

.method public static c()V
    .locals 4

    new-instance v0, Lc/e/a/a/d;

    const/16 v1, 0x199

    invoke-direct {v0, v1}, Lc/e/a/a/d;-><init>(I)V

    const/4 v1, 0x1

    const-wide/16 v2, 0x1b58

    invoke-static {v1, v0, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static c(Ljava/io/OutputStream;)V
    .locals 7

    const-string v0, "UTF-8"

    :try_start_0
    const-string v1, "disk info:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    sget-boolean v1, Lc/e/a/f;->Y:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sput-boolean v2, Lc/e/a/f;->g:Z

    :try_start_1
    const-string v1, "FSSTAT"

    invoke-static {v1}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lc/e/a/f;->g:Z

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    new-instance v0, Ljava/io/File;

    .line 1
    sget-object v3, Lc/e/a/a/f;->b:Ljava/lang/String;

    .line 2
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lc/e/a/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_3
    :try_start_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "/storage"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v3, v0

    :goto_4
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lc/e/a/f;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v1}, Lc/e/a/f;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Set;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_4
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_2
    :goto_5
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lc/e/a/f;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lc/e/a/c;->w()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c(Z)V
    .locals 3

    sget-boolean v0, Lc/e/a/f;->P:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_2

    .line 3
    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p0, p0, Lc/e/a/g/b;->W:Z

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean p0, p0, Lc/e/a/g/b;->W:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    .line 4
    sget-object p0, Lc/e/a/f;->Q:Lc/e/a/a/d;

    invoke-static {p0}, Lc/e/a/a/e;->b(Ljava/lang/Runnable;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lc/e/a/f;->Q:Lc/e/a/a/d;

    invoke-static {p0}, Lc/e/a/a/e;->a(Ljava/lang/Runnable;)V

    :cond_3
    sget-object p0, Lc/e/a/f;->Q:Lc/e/a/a/d;

    const-wide/16 v0, 0xbb8

    invoke-static {v2, p0, v0, v1}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public static d()V
    .locals 5

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->X:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_2

    move v2, v1

    goto :goto_1

    .line 2
    :cond_1
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    const-string v0, "crashsdk"

    const-string v3, "SIG 3 is disabled by settings"

    invoke-static {v0, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_4

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-instance v3, Lc/e/a/a/d;

    const/16 v4, 0x19d

    invoke-direct {v3, v4}, Lc/e/a/a/d;-><init>(I)V

    invoke-static {v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    const/4 v2, 0x7

    int-to-long v3, v0

    const/4 v0, 0x0

    invoke-static {v2, v3, v4, v0, v0}, Lcom/uc/crashsdk/JNIBridge;->nativeCmd(IJLjava/lang/String;[Ljava/lang/Object;)J

    if-eqz v1, :cond_5

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_5
    return-void
.end method

.method public static d(Ljava/io/OutputStream;)V
    .locals 9

    const-string v0, "UTF-8"

    sget-boolean v1, Lc/e/a/c;->r:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sput-boolean v2, Lc/e/a/f;->g:Z

    const-wide/16 v1, 0x1

    const/16 v4, 0x11

    invoke-static {v4, v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(ILjava/lang/String;)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v1}, Lc/e/a/a/f;->c(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_1
    sput-boolean v3, Lc/e/a/f;->g:Z

    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    :cond_1
    sput-boolean v3, Lc/e/a/f;->g:Z

    return-void

    :cond_2
    const/4 v1, 0x0

    const/16 v4, 0x384

    .line 5
    :try_start_2
    sget-object v5, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v4, v5, Lc/e/a/g/b;->O:I

    .line 6
    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/self/fd"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "opened file count: %d, write limit: %d.\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    array-length v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_3
    const-string v3, "[DEBUG] listFiles failed!\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    invoke-static {v3, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_2
    if-eqz v1, :cond_5

    :try_start_3
    array-length v3, v1

    if-lt v3, v4, :cond_5

    const-string v3, "opened files:\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    array-length v4, v1

    :goto_3
    if-ge v2, v4, :cond_4

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_3
    move-exception v1

    :try_start_5
    invoke-static {v1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_5
    :goto_4
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static d(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Lc/e/a/h;->b(Z)V

    if-eqz p0, :cond_0

    invoke-static {}, Lc/e/a/c;->s()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lc/e/a/h;->a(Ljava/lang/String;Z)Z

    invoke-static {}, Lc/e/a/a/g;->b()V

    return-void

    :cond_0
    const-string p0, ".st"

    .line 7
    invoke-static {p0}, Lc/e/a/c;->d(Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 8
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lc/e/a/h;->a(Ljava/lang/String;Z)Z

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lc/e/a/a/g;->b()V

    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lc/e/a/f;->Y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lc/e/a/f;->m(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return v1
.end method

.method public static e()V
    .locals 6

    invoke-static {}, Lc/e/a/i;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ucebu can not list folder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ucebu"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v2, v2}, Lc/e/a/f;->a(ZZ)Z

    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static e(Ljava/io/OutputStream;)V
    .locals 12

    const-string v0, "UTF-8"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    sget-object v3, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v3, v3, Lc/e/a/g/b;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/task"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    array-length v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v3, :cond_1

    return-void

    :catchall_0
    move-exception v4

    goto :goto_2

    :goto_0
    move-object v4, v3

    goto :goto_1

    :catchall_1
    move-exception v3

    goto :goto_0

    :goto_1
    const/16 v3, 0x12c

    .line 3
    :goto_2
    invoke-static {v4, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move v4, v1

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    :try_start_2
    const-string v5, "threads info:\n"

    .line 4
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/OutputStream;->write([B)V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "threads count: %d, dump limit: %d.\n"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v8, v4

    invoke-static {v5, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    const-string v3, " tid     name\n"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    array-length v3, v2

    move v5, v1

    :goto_3
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    new-instance v8, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "comm"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x80

    invoke-static {v8, v9, v1}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc/e/a/f;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%5s %s\n"

    new-array v11, v7, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v11, v1

    aput-object v8, v11, v4

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_3
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lib"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ".so"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_0
    return v0
.end method

.method public static f(Ljava/lang/String;)J
    .locals 9

    const-string v0, "android.os.SystemProperties"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getLong"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v5, v8

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception p0

    .line 1
    invoke-static {p0, v3}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_0
    return-wide v1
.end method

.method public static synthetic f()V
    .locals 2

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc/e/a/f;->k()Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x7d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/crashsdk/JNIBridge;->set(ILjava/lang/String;)J

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lc/e/a/f;->J:Z

    invoke-static {}, Lc/e/a/f;->l()V

    return-void
.end method

.method public static f(Ljava/io/OutputStream;)V
    .locals 11

    const-string v0, "UTF-8"

    sget-boolean v1, Lc/e/a/c;->r:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "solib build id:\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/maps"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x200

    invoke-direct {v4, v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v5, ".so"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x2f

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "/data/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_3

    sget-object v5, Lc/e/a/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v7

    :goto_3
    if-eqz v5, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lc/e/a/f;->Y:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v8, 0x2

    if-eqz v5, :cond_4

    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SOBUILDID"

    const-string v10, "$^%s`%s^$"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v6

    aput-object v1, v8, v7

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v1, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x3

    const-wide/16 v9, 0x0

    invoke-static {v5, v9, v10, v1}, Lcom/uc/crashsdk/JNIBridge;->nativeGet(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%s: %s\n"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    aput-object v5, v8, v7

    invoke-static {v9, v10, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v1

    move-object v4, v3

    :goto_4
    :try_start_6
    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_5
    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_5
    move-exception p0

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "unknown"

    const-string v1, "-"

    const-string v2, "[^0-9a-zA-Z-.]"

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/high16 v4, 0x10000

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    sget-object v7, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v7, v7, Lc/e/a/g/b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 6
    invoke-static {}, Lc/e/a/i;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {}, Lc/e/a/i;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 7
    :try_start_0
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v6, v0

    :goto_0
    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 8
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 9
    :try_start_1
    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    aput-object v0, v4, v5

    const/4 v0, 0x5

    aput-object p0, v4, v0

    const-string p0, "%s%s_%s_%s_%s_%s_"

    .line 10
    invoke-static {v3, p0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/io/OutputStream;)V
    .locals 8

    :try_start_0
    const-string v0, "recent status:\n"

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_1
    sget-boolean v2, Lc/e/a/f;->Y:Z

    if-eqz v2, :cond_0

    const-string v2, "LASTVER"

    invoke-static {v2}, Lc/e/a/f;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lc/e/a/b;->k()Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "last version: \'%s\'\n"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-static {v2, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :goto_2
    :try_start_2
    sget-object v2, Lc/e/a/f;->q:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    sget-object v3, Lc/e/a/f;->s:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generating log: %s\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget-object v6, Lc/e/a/f;->s:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    :cond_1
    sget v3, Lc/e/a/f;->r:I

    if-gtz v3, :cond_2

    sget-object v3, Lc/e/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "generated %d logs, recent are:\n"

    new-array v5, v1, [Ljava/lang/Object;

    sget v6, Lc/e/a/f;->r:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write([B)V

    sget-object v3, Lc/e/a/f;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "* %s\n"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v0

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write([B)V

    goto :goto_3

    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dumping all threads: %s\n"

    new-array v4, v1, [Ljava/lang/Object;

    sget-boolean v5, Lc/e/a/f;->t:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    sget-object v2, Lc/e/a/f;->u:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "dumping threads: %s\n"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v4, Lc/e/a/f;->u:Ljava/lang/String;

    aput-object v4, v1, v0

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v0, p0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/io/OutputStream;)V

    :cond_4
    :goto_4
    invoke-static {p0}, Lc/e/a/f;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static g()Z
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lc/e/a/g/b;->Y:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    return v1

    .line 2
    :cond_2
    invoke-static {}, Lc/e/a/f;->m()Z

    move-result v0

    return v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    sget-object v2, Lc/e/a/f;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lc/e/a/f;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lc/e/a/f;->h:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 6
    invoke-static {}, Lc/e/a/f;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 7
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "fg"

    goto :goto_1

    :cond_1
    const-string v2, "bg"

    :goto_1
    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object p0, v1, v2

    const-string p0, "%s%s_%s_%s.log"

    .line 8
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h()V
    .locals 10

    const-string v0, "-"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Landroid/os/Build;->HARDWARE:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1
    invoke-static {v2, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move-object v2, v0

    :goto_0
    const/4 v3, 0x0

    .line 2
    :try_start_1
    new-instance v4, Ljava/io/FileReader;

    new-instance v5, Ljava/io/File;

    const-string v6, "/proc/cpuinfo"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v5, Ljava/io/BufferedReader;

    const/16 v6, 0x200

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, v1

    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string v8, ":"

    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const-string v7, "Processor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v6, 0x2

    if-lt v3, v6, :cond_0

    goto :goto_4

    :catchall_1
    move-exception v3

    goto :goto_3

    :catchall_2
    move-exception v5

    move-object v9, v5

    move-object v5, v3

    move-object v3, v9

    goto :goto_3

    :catchall_3
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    move-object v4, v5

    .line 3
    :goto_3
    :try_start_5
    invoke-static {v3, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 4
    :cond_3
    :goto_4
    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    sput-object v2, Lc/e/a/f;->j:Ljava/lang/String;

    sput-object v0, Lc/e/a/f;->k:Ljava/lang/String;

    return-void

    :catchall_4
    move-exception v0

    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    invoke-static {v5}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lc/e/a/a/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static i()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v1, v0, Lc/e/a/g/b;->x:Ljava/lang/String;

    .line 2
    iget-boolean v0, v0, Lc/e/a/g/b;->w:Z

    .line 3
    invoke-static {p0, v1, v0}, Lc/e/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    return-object v0
.end method

.method public static j()V
    .locals 1

    sget-boolean v0, Lc/e/a/f;->M:Z

    if-nez v0, :cond_0

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/uc/crashsdk/JNIBridge;->cmd(I)J

    :cond_0
    return-void
.end method

.method public static k()Ljava/lang/StringBuilder;
    .locals 9

    const-string v0, "\n"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->D:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, " (Unknown)"

    const-string v4, " (?)"

    packed-switch v2, :pswitch_data_0

    move-object v2, v4

    goto :goto_0

    :pswitch_0
    :try_start_1
    const-string v2, " (Cold)"

    goto :goto_0

    :pswitch_1
    const-string v2, " (Unspecified failure)"

    goto :goto_0

    :pswitch_2
    const-string v2, " (Over voltage)"

    goto :goto_0

    :pswitch_3
    const-string v2, " (Dead)"

    goto :goto_0

    :pswitch_4
    const-string v2, " (Overheat)"

    goto :goto_0

    :pswitch_5
    const-string v2, " (Good)"

    goto :goto_0

    :pswitch_6
    move-object v2, v3

    :goto_0
    const-string v5, "health: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lc/e/a/f;->D:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->E:I

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_0

    move-object v2, v4

    goto :goto_1

    :cond_0
    const-string v2, " (Wireless)"

    goto :goto_1

    :cond_1
    const-string v2, " (USB port)"

    goto :goto_1

    :cond_2
    const-string v2, " (AC charger)"

    goto :goto_1

    :cond_3
    const-string v2, " (None)"

    :goto_1
    const-string v8, "pluged: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lc/e/a/f;->E:I

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->F:I

    if-eq v2, v7, :cond_8

    if-eq v2, v6, :cond_7

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    if-eq v2, v5, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    move-object v3, v4

    goto :goto_2

    :cond_4
    const-string v3, " (Full)"

    goto :goto_2

    :cond_5
    const-string v3, " (Not charging)"

    goto :goto_2

    :cond_6
    const-string v3, " (Discharging)"

    goto :goto_2

    :cond_7
    const-string v3, " (Charging)"

    :cond_8
    :goto_2
    const-string v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "voltage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->C:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "temperature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lc/e/a/f;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "technology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lc/e/a/f;->H:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "battery low: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lc/e/a/f;->I:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static k(Ljava/lang/String;)[Z
    .locals 7

    .line 2
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v1, v0, Lc/e/a/g/b;->w:Z

    .line 3
    iget-boolean v0, v0, Lc/e/a/g/b;->a0:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_a

    :cond_0
    const-string v3, ".tmp"

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ".ec"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    move v3, v2

    move v4, v3

    goto :goto_0

    :cond_2
    move v4, v2

    :cond_3
    :goto_0
    const/16 v5, 0x5f

    invoke-virtual {p0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_4
    if-gez v3, :cond_3

    const/16 v3, 0x8

    if-eq v4, v3, :cond_5

    goto :goto_2

    .line 5
    :cond_5
    sget-object v3, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v3, v3, Lc/e/a/g/b;->x:Ljava/lang/String;

    const-string v4, ".log"

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-eq v3, p0, :cond_a

    :cond_8
    :goto_1
    move v1, v2

    goto :goto_3

    :cond_9
    :goto_2
    move v0, v2

    move v1, v0

    :cond_a
    :goto_3
    const/4 p0, 0x2

    new-array p0, p0, [Z

    aput-boolean v1, p0, v2

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    return-object p0
.end method

.method public static l()V
    .locals 4

    sget-boolean v0, Lc/e/a/c;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/e/a/f;->J:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/e/a/b;->D:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lc/e/a/f;->J:Z

    sget-object v1, Lc/e/a/f;->N:Lc/e/a/a/d;

    invoke-static {v1}, Lc/e/a/a/e;->b(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lc/e/a/f;->N:Lc/e/a/a/d;

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    sget-object v2, Lc/e/a/f;->p:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "customlog"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lc/e/a/a/f;->a(Ljava/io/File;IZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "([^\\n\\r\\t\\s]+) (\\d+) (\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    move v0, v4

    :goto_0
    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v10, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sub-long v13, v5, v11

    const-wide/32 v15, 0x5265c00

    cmp-long v0, v13, v15

    const/4 v13, 0x3

    if-gez v0, :cond_1

    :try_start_1
    invoke-virtual {v10, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1
    :try_start_2
    invoke-static {v0, v4}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v4

    move-wide v11, v5

    .line 2
    :goto_1
    sget-object v14, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v14, v14, Lc/e/a/g/b;->D:I

    if-ltz v14, :cond_2

    if-lt v0, v14, :cond_2

    move v14, v9

    goto :goto_2

    :cond_2
    move v14, v4

    :goto_2
    add-int/2addr v0, v9

    .line 3
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s %d %d"

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v4

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v13, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v13, v11

    invoke-static {v15, v8, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v7, v8, v10, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v9

    goto :goto_3

    :cond_3
    move v0, v4

    move v14, v0

    :goto_3
    if-nez v0, :cond_4

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%s %d 1\n"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v10, v9

    invoke-static {v0, v8, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    const/4 v1, 0x0

    :try_start_3
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v5, v0, v4, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v5}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v5

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v1, v5

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    .line 4
    :goto_4
    :try_start_6
    invoke-static {v0, v4}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5
    :try_start_7
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    :goto_5
    monitor-exit v2

    return v14

    :goto_6
    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0
.end method

.method public static m()Z
    .locals 5

    sget-wide v0, Lc/e/a/f;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    const-wide/16 v3, 0x2

    sput-wide v3, Lc/e/a/f;->e:J

    const-string v0, "logs"

    invoke-static {v0}, Lc/e/a/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/e/a/f;->f(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    sput-wide v1, Lc/e/a/f;->e:J

    :cond_0
    sget-wide v3, Lc/e/a/f;->e:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 14

    sget-object v0, Lc/e/a/f;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/e/a/f;->y:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-static {}, Lc/e/a/c;->w()Ljava/lang/String;

    move-result-object v1

    const-string v3, "all:1"

    invoke-static {v1, v3, v2}, Lc/e/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/f;->n(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lc/e/a/f;->y:Ljava/util/Map;

    :cond_0
    sget-object v1, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v3, "all"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-object p0, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v1, "all"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto/16 :goto_3

    :cond_1
    sget-object v1, Lc/e/a/f;->y:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lc/e/a/f;->y:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    const-string v1, "java"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "jni"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "anr"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "unexp"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move p0, v2

    goto :goto_2

    :cond_4
    :goto_1
    move p0, v3

    :goto_2
    if-eqz p0, :cond_5

    sget-object v1, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v4, "crash"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object p0, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v1, "crash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_5
    if-nez p0, :cond_6

    sget-object p0, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v1, "nocrash"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_6
    sget-object p0, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lc/e/a/f;->y:Ljava/util/Map;

    const-string v1, "other"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    :cond_7
    move p0, v3

    :goto_3
    if-eqz p0, :cond_10

    int-to-long v4, p0

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    const-wide/16 v8, 0x1

    if-gez p0, :cond_d

    const-wide/16 v10, 0x1e

    const-wide/16 v12, -0x2

    cmp-long p0, v4, v12

    if-nez p0, :cond_8

    const-wide/16 v10, 0x7

    goto :goto_4

    :cond_8
    const-wide/16 v12, -0x3

    cmp-long p0, v4, v12

    if-nez p0, :cond_9

    const-wide/16 v10, 0xf

    goto :goto_4

    :cond_9
    const-wide/16 v12, -0x4

    cmp-long p0, v4, v12

    if-nez p0, :cond_a

    const-wide/16 v10, 0x3c

    .line 1
    :cond_a
    :goto_4
    sget-wide v4, Lc/e/a/b;->h:J

    cmp-long p0, v4, v6

    if-nez p0, :cond_b

    const-wide/16 v4, -0x1

    goto :goto_5

    .line 2
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    const-wide/32 v4, 0x5265c00

    div-long v4, v12, v4

    :goto_5
    cmp-long p0, v4, v10

    if-gtz p0, :cond_c

    move-wide v4, v8

    goto :goto_6

    :cond_c
    sub-long/2addr v4, v10

    :cond_d
    :goto_6
    cmp-long p0, v4, v8

    if-nez p0, :cond_e

    goto :goto_7

    :cond_e
    cmp-long p0, v4, v6

    if-gtz p0, :cond_f

    goto :goto_7

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    rem-long/2addr v8, v4

    cmp-long p0, v8, v6

    if-nez p0, :cond_10

    goto :goto_7

    :cond_10
    move v3, v2

    :goto_7
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static n(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\\|"

    const/16 v2, 0x1e

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    const/4 v5, 0x3

    const-string v6, ":"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :try_start_0
    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 4
    invoke-static {v4, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 5
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static n()V
    .locals 16

    invoke-static {}, Lc/e/a/i;->h()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    array-length v3, v1

    const/16 v4, 0x96

    if-gt v3, v4, :cond_2

    return-void

    :cond_2
    new-instance v3, Lc/e/a/f$b;

    invoke-direct {v3, v2}, Lc/e/a/f$b;-><init>(B)V

    invoke-static {v1, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v3, v1

    sub-int/2addr v3, v4

    if-gez v3, :cond_3

    move v3, v2

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v6, v2

    move v7, v6

    move v8, v7

    :goto_0
    array-length v9, v1

    if-ge v6, v9, :cond_6

    aget-object v9, v1, v6

    const/4 v10, 0x1

    if-ge v6, v3, :cond_4

    move v11, v10

    goto :goto_1

    :cond_4
    move v11, v2

    :goto_1
    if-nez v11, :cond_5

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long v12, v4, v12

    const-wide/32 v14, 0x19bfcc00

    cmp-long v12, v12, v14

    if-ltz v12, :cond_5

    move v11, v10

    :cond_5
    if-eqz v11, :cond_6

    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    goto :goto_2

    :catchall_0
    move-exception v9

    add-int/2addr v8, v10

    .line 1
    :try_start_2
    invoke-static {v9, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_2
    const/4 v9, 0x3

    if-ge v8, v9, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Removed "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " logs in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    .line 3
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static o()Ljava/lang/String;
    .locals 10

    const-string v0, ","

    sget-object v1, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lc/e/a/f;->i:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-class v4, Landroid/os/Build;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "SUPPORTED_ABIS"

    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    instance-of v5, v4, [Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v4, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, v4

    move v7, v1

    move v8, v2

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v9, v4, v7

    if-nez v8, :cond_1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    move v8, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc/e/a/f;->i:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_3
    sget-object v4, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :try_start_2
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v5, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_1
    move-object v4, v3

    :catchall_2
    move-object v5, v3

    :goto_1
    invoke-static {v4}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_4

    sput-object v4, Lc/e/a/f;->i:Ljava/lang/String;

    :cond_4
    invoke-static {v5}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v6, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc/e/a/f;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc/e/a/f;->i:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sput-object v5, Lc/e/a/f;->i:Ljava/lang/String;

    :cond_6
    :goto_2
    const-string v4, "android.os.SystemProperties"

    :try_start_4
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "get"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v1

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v2

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    const-string v7, "ro.product.cpu.abi"

    aput-object v7, v5, v1

    aput-object v3, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "ro.product.cpu.abi2"

    aput-object v7, v6, v1

    aput-object v3, v6, v2

    invoke-virtual {v4, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v2

    goto :goto_3

    :cond_7
    move-object v2, v3

    goto :goto_5

    :catchall_4
    move-exception v2

    move-object v5, v3

    .line 1
    :goto_3
    invoke-static {v2, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    move-object v2, v3

    :goto_4
    move-object v3, v5

    .line 2
    :goto_5
    :try_start_6
    invoke-static {v3}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lc/e/a/f;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lc/e/a/f;->i:Ljava/lang/String;

    :cond_8
    invoke-static {v2}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/f;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lc/e/a/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/f;->i:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    .line 3
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 4
    :cond_9
    :goto_6
    sget-object v0, Lc/e/a/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static o(Ljava/lang/String;)V
    .locals 4

    .line 5
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->p:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lc/e/a/f;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v1, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_0
    if-eqz p0, :cond_3

    const-string v1, ""

    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_1
    invoke-static {}, Lc/e/a/i;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "copy log to: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "crashsdk"

    invoke-static {v3, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lc/e/a/a/f;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 9
    invoke-static {p0, v0}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static p()Ljava/lang/String;
    .locals 9

    const-string v0, " kB\n"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JavaMax:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "JavaTotal:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "JavaFree:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NativeHeap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NativeAllocated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "NativeFree: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v3

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1
    :try_start_1
    sget-object v3, Lc/e/a/a/f;->a:Landroid/content/Context;

    const-string v4, "activity"

    .line 2
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    new-instance v4, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v4}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v3, "availMem:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "threshold:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v4, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    div-long/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lowMemory:  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    :try_start_2
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 4
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 5
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    const-string v0, ""

    return-object v0
.end method

.method public static p(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "$^%s^$"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    sget-object v0, Lc/e/a/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lc/e/a/f;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/f;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static r()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static s()Ljava/lang/String;
    .locals 4

    sget-object v0, Lc/e/a/f;->v:Ljava/lang/String;

    invoke-static {v0}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lc/e/a/f;->w:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lc/e/a/c;->t()Ljava/lang/String;

    move-result-object v0

    .line 1
    sget-object v2, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v2, v2, Lc/e/a/g/b;->U:Z

    if-eqz v2, :cond_0

    const-string v2, "https://up4-intl.ucweb.com/upload"

    goto :goto_0

    :cond_0
    const-string v2, "https://up4.ucweb.com/upload"

    :goto_0
    const/4 v3, 0x1

    .line 2
    invoke-static {v0, v2, v3}, Lc/e/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/e/a/f;->v:Ljava/lang/String;

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static t()V
    .locals 2

    sget-object v0, Lc/e/a/f;->w:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lc/e/a/f;->v:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lc/e/a/f;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static v()V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    new-instance v0, Lc/e/a/f;

    invoke-direct {v0}, Lc/e/a/f;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static w()Z
    .locals 3

    sget-object v0, Lc/e/a/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1
    sget-boolean v0, Lc/e/a/c;->r:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v1
.end method

.method public static x()V
    .locals 6

    .line 1
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget v0, v0, Lc/e/a/g/b;->n:I

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lc/e/a/c;->d()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    new-instance v3, Lc/e/a/a/d;

    const/16 v5, 0x191

    invoke-direct {v3, v5}, Lc/e/a/a/d;-><init>(I)V

    invoke-static {v4, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;)Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Lc/e/a/a/d;

    const/16 v3, 0x192

    invoke-direct {v2, v3}, Lc/e/a/a/d;-><init>(I)V

    sput-object v2, Lc/e/a/f;->T:Ljava/lang/Runnable;

    sget-object v2, Lc/e/a/f;->T:Ljava/lang/Runnable;

    invoke-static {v4, v2, v0, v1}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method public static y()V
    .locals 4

    sget-boolean v0, Lc/e/a/c;->q:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/e/a/b;->D:Z

    if-eqz v0, :cond_0

    sget-object v0, Lc/e/a/f;->V:Ljava/lang/Runnable;

    invoke-static {v0}, Lc/e/a/a/e;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Lc/e/a/f;->V:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lc/e/a/a/e;->a(ILjava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "java"

    const-string v5, "original exception is: "

    const-string v6, "crashsdk"

    const-string v7, "Call java default handler: "

    const-string v8, "DEBUG"

    sget-boolean v0, Lc/e/a/f;->Y:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v11, v9

    goto :goto_0

    :cond_2
    move v11, v10

    :goto_0
    :try_start_0
    sget-object v0, Lc/e/a/f;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_28

    const/4 v14, 0x4

    if-eqz v0, :cond_b

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_b

    const-string v0, "another thread is generating java report!"

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current thread exception is:"

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lc/e/a/f;->a(Ljava/lang/Throwable;)V

    move v4, v10

    :cond_3
    sget-boolean v0, Lc/e/a/f;->S:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v0, :cond_4

    const-wide/16 v15, 0x3e8

    :try_start_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v15, v0

    .line 136
    :try_start_3
    invoke-static {v15, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_1
    add-int/2addr v4, v9

    if-lt v4, v14, :cond_3

    .line 137
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    if-eqz p3, :cond_5

    .line 138
    :try_start_4
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_5

    if-nez v11, :cond_5

    .line 139
    :try_start_5
    invoke-static {v9, v10}, Lc/e/a/f;->a(ZZ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v9

    goto :goto_3

    :catchall_1
    move-exception v0

    move v4, v9

    goto :goto_2

    :catchall_2
    move-exception v0

    move v4, v10

    .line 140
    :goto_2
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_3

    :cond_5
    move v4, v10

    :goto_3
    if-nez v4, :cond_6

    if-nez v11, :cond_6

    .line 141
    invoke-static {v10}, Lc/e/a/f;->b(Z)V

    :cond_6
    :try_start_6
    invoke-static {v10}, Lc/e/a/h;->a(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, v0

    .line 142
    invoke-static {v4, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 143
    :goto_4
    :try_start_7
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->G:Z

    .line 144
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v4

    if-nez v4, :cond_7

    move v0, v9

    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_8

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_8
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v11, :cond_9

    .line 145
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 146
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    .line 147
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 148
    :cond_9
    :goto_5
    sput-boolean v9, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_a

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_a
    return-void

    :catchall_5
    move-exception v0

    goto/16 :goto_a

    :cond_b
    if-nez v11, :cond_12

    :try_start_8
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-static {}, Lc/e/a/a/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz p3, :cond_c

    .line 149
    :try_start_9
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v0, :cond_c

    if-nez v11, :cond_c

    .line 150
    :try_start_a
    invoke-static {v9, v10}, Lc/e/a/f;->a(ZZ)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move v4, v9

    goto :goto_7

    :catchall_6
    move-exception v0

    move v4, v9

    goto :goto_6

    :catchall_7
    move-exception v0

    move v4, v10

    .line 151
    :goto_6
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_7

    :cond_c
    move v4, v10

    :goto_7
    if-nez v4, :cond_d

    if-nez v11, :cond_d

    .line 152
    invoke-static {v10}, Lc/e/a/f;->b(Z)V

    :cond_d
    :try_start_b
    invoke-static {v10}, Lc/e/a/h;->a(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_8

    :catchall_8
    move-exception v0

    move-object v4, v0

    .line 153
    invoke-static {v4, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 154
    :goto_8
    :try_start_c
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->G:Z

    .line 155
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v4

    if-nez v4, :cond_e

    move v0, v9

    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_f

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_f

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_f
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v11, :cond_10

    .line 156
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 157
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception v0

    .line 158
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 159
    :cond_10
    :goto_9
    sput-boolean v9, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_11

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_11
    return-void

    :goto_a
    move v13, v10

    goto/16 :goto_2b

    :cond_12
    :try_start_d
    const-string v0, "begin to generate java report"

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_28

    :try_start_e
    iget-object v0, v1, Lc/e/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/FileInputStream;

    invoke-static {v15}, Lc/e/a/a/f;->a(Ljava/io/Closeable;)V

    goto :goto_b

    :cond_13
    iget-object v0, v1, Lc/e/a/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    goto :goto_c

    :catchall_a
    move-exception v0

    .line 160
    :try_start_f
    invoke-static {v0, v10}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_28

    .line 161
    :goto_c
    :try_start_10
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v12, v0, Lc/e/a/g/b;->s:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    .line 162
    :try_start_11
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-object v0, v0, Lc/e/a/g/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_14

    const-string v13, ""

    .line 163
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 164
    :cond_14
    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Lc/e/a/f;->d:Z

    if-nez v0, :cond_15

    const-string v0, "ucebujava"

    goto :goto_d

    :catchall_b
    move-exception v0

    goto :goto_e

    :cond_15
    move-object v0, v4

    .line 165
    :goto_d
    invoke-static {v0}, Lc/e/a/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_16
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc/e/a/i;->g()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move v13, v10

    goto :goto_f

    :catchall_c
    move-exception v0

    move v12, v10

    :goto_e
    :try_start_12
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "get java log name failed: "

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lc/e/a/f;->a(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lc/e/a/f;->a(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_28

    move v13, v9

    const/4 v15, 0x0

    :goto_f
    const-string v10, "omit java crash"

    if-nez v11, :cond_26

    :try_start_13
    invoke-static {}, Lc/e/a/i;->j()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    :try_start_14
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x3

    .line 166
    invoke-static {v0, v9}, Lc/e/a/h;->a(II)V

    goto :goto_11

    :catchall_d
    move-exception v0

    goto :goto_10

    :cond_17
    invoke-static {v14, v9}, Lc/e/a/h;->a(II)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    goto :goto_11

    :goto_10
    const/4 v14, 0x0

    .line 167
    :try_start_15
    invoke-static {v0, v14}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto :goto_11

    :catchall_e
    move-exception v0

    const/4 v14, 0x0

    :try_start_16
    invoke-static {v0, v14}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_18

    .line 168
    :goto_11
    :try_start_17
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lc/e/a/c;->r()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    goto :goto_12

    :catchall_f
    move-exception v0

    const/4 v14, 0x0

    .line 169
    :try_start_18
    invoke-static {v0, v14}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :goto_12
    if-eqz v12, :cond_1e

    .line 170
    invoke-static {v8, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    if-eqz p3, :cond_18

    .line 171
    :try_start_19
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    if-eqz v0, :cond_18

    if-nez v11, :cond_18

    const/4 v4, 0x0

    .line 172
    :try_start_1a
    invoke-static {v9, v4}, Lc/e/a/f;->a(ZZ)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    move v4, v9

    const/4 v5, 0x0

    goto :goto_14

    :catchall_10
    move-exception v0

    move v4, v9

    goto :goto_13

    :catchall_11
    move-exception v0

    const/4 v4, 0x0

    :goto_13
    const/4 v5, 0x0

    .line 173
    invoke-static {v0, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_14

    :cond_18
    const/4 v5, 0x0

    move v4, v5

    :goto_14
    if-nez v4, :cond_19

    if-nez v11, :cond_19

    .line 174
    invoke-static {v5}, Lc/e/a/f;->b(Z)V

    :cond_19
    :try_start_1b
    invoke-static {v5}, Lc/e/a/h;->a(Z)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_12

    goto :goto_15

    :catchall_12
    move-exception v0

    move-object v4, v0

    .line 175
    invoke-static {v4, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 176
    :goto_15
    :try_start_1c
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->G:Z

    .line 177
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v4

    if-nez v4, :cond_1a

    move v0, v9

    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1b

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1b

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1b
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-nez v11, :cond_1c

    .line 178
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 179
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_13

    goto :goto_16

    :catchall_13
    move-exception v0

    const/4 v2, 0x0

    .line 180
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 181
    :cond_1c
    :goto_16
    sput-boolean v9, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_1d

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_1d
    return-void

    :cond_1e
    :try_start_1d
    invoke-static {v4}, Lc/e/a/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "java log sample miss"

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_18

    if-eqz p3, :cond_1f

    .line 182
    :try_start_1e
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    if-eqz v0, :cond_1f

    if-nez v11, :cond_1f

    const/4 v4, 0x0

    .line 183
    :try_start_1f
    invoke-static {v9, v4}, Lc/e/a/f;->a(ZZ)Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_14

    move v4, v9

    const/4 v5, 0x0

    goto :goto_18

    :catchall_14
    move-exception v0

    move v4, v9

    goto :goto_17

    :catchall_15
    move-exception v0

    const/4 v4, 0x0

    :goto_17
    const/4 v5, 0x0

    .line 184
    invoke-static {v0, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_18

    :cond_1f
    const/4 v5, 0x0

    move v4, v5

    :goto_18
    if-nez v4, :cond_20

    if-nez v11, :cond_20

    .line 185
    invoke-static {v5}, Lc/e/a/f;->b(Z)V

    :cond_20
    :try_start_20
    invoke-static {v5}, Lc/e/a/h;->a(Z)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_16

    goto :goto_19

    :catchall_16
    move-exception v0

    move-object v4, v0

    .line 186
    invoke-static {v4, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 187
    :goto_19
    :try_start_21
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->G:Z

    .line 188
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v4

    if-nez v4, :cond_21

    move v0, v9

    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_22

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_22

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_22
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_23

    if-nez v11, :cond_23

    .line 189
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 190
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_17

    goto :goto_1a

    :catchall_17
    move-exception v0

    const/4 v2, 0x0

    .line 191
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 192
    :cond_23
    :goto_1a
    sput-boolean v9, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_24

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_24
    return-void

    :cond_25
    const-wide/16 v9, 0x0

    goto/16 :goto_24

    :catchall_18
    move-exception v0

    goto/16 :goto_2b

    :cond_26
    if-eqz v12, :cond_27

    :try_start_22
    const-string v15, "omit"

    invoke-static {v8, v10}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_28

    const/4 v10, 0x0

    const/4 v14, 0x0

    invoke-static {v15, v4, v10, v14}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCreateConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v19
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_18

    const-wide/16 v16, 0x0

    goto :goto_1b

    :cond_28
    const-wide/16 v16, 0x0

    const-wide/16 v19, 0x0

    :goto_1b
    cmp-long v0, v19, v16

    if-nez v0, :cond_30

    :try_start_23
    const-string v4, "skip java crash:"

    invoke-static {v8, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lc/e/a/f;->a(Ljava/lang/Throwable;)V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1d

    if-eqz v0, :cond_29

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_29

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_29
    if-eqz p3, :cond_2a

    .line 193
    :try_start_24
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1a

    if-eqz v0, :cond_2a

    if-nez v11, :cond_2a

    const/4 v4, 0x0

    .line 194
    :try_start_25
    invoke-static {v9, v4}, Lc/e/a/f;->a(ZZ)Z
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_19

    move v4, v9

    const/4 v5, 0x0

    goto :goto_1d

    :catchall_19
    move-exception v0

    move v4, v9

    goto :goto_1c

    :catchall_1a
    move-exception v0

    const/4 v4, 0x0

    :goto_1c
    const/4 v5, 0x0

    .line 195
    invoke-static {v0, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_1d

    :cond_2a
    const/4 v5, 0x0

    move v4, v5

    :goto_1d
    if-nez v4, :cond_2b

    if-nez v11, :cond_2b

    .line 196
    invoke-static {v5}, Lc/e/a/f;->b(Z)V

    :cond_2b
    :try_start_26
    invoke-static {v5}, Lc/e/a/h;->a(Z)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1b

    goto :goto_1e

    :catchall_1b
    move-exception v0

    move-object v4, v0

    .line 197
    invoke-static {v4, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 198
    :goto_1e
    :try_start_27
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->G:Z

    .line 199
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v4

    if-nez v4, :cond_2c

    move v0, v9

    :cond_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2d

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2d

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2d
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2e

    if-nez v11, :cond_2e

    .line 200
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 201
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1c

    goto :goto_1f

    :catchall_1c
    move-exception v0

    const/4 v2, 0x0

    .line 202
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 203
    :cond_2e
    :goto_1f
    sput-boolean v9, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_2f

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_2f
    return-void

    :catchall_1d
    move-exception v0

    move-wide/from16 v9, v19

    goto/16 :goto_2c

    :cond_30
    if-eqz v12, :cond_38

    if-eqz v0, :cond_31

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_31

    invoke-static/range {v19 .. v20}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_31
    if-eqz p3, :cond_32

    .line 204
    :try_start_28
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1f

    if-eqz v0, :cond_32

    if-nez v11, :cond_32

    const/4 v4, 0x0

    .line 205
    :try_start_29
    invoke-static {v9, v4}, Lc/e/a/f;->a(ZZ)Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1e

    move v4, v9

    const/4 v5, 0x0

    goto :goto_21

    :catchall_1e
    move-exception v0

    move v4, v9

    goto :goto_20

    :catchall_1f
    move-exception v0

    const/4 v4, 0x0

    :goto_20
    const/4 v5, 0x0

    .line 206
    invoke-static {v0, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_21

    :cond_32
    const/4 v5, 0x0

    move v4, v5

    :goto_21
    if-nez v4, :cond_33

    if-nez v11, :cond_33

    .line 207
    invoke-static {v5}, Lc/e/a/f;->b(Z)V

    :cond_33
    :try_start_2a
    invoke-static {v5}, Lc/e/a/h;->a(Z)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_20

    goto :goto_22

    :catchall_20
    move-exception v0

    move-object v4, v0

    .line 208
    invoke-static {v4, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 209
    :goto_22
    :try_start_2b
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->G:Z

    .line 210
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v4

    if-nez v4, :cond_34

    move v0, v9

    :cond_34
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_35

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_35

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_35
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_36

    if-nez v11, :cond_36

    .line 211
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 212
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_21

    goto :goto_23

    :catchall_21
    move-exception v0

    const/4 v2, 0x0

    .line 213
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 214
    :cond_36
    :goto_23
    sput-boolean v9, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_37

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_37
    return-void

    :cond_38
    move-wide/from16 v9, v19

    :goto_24
    :try_start_2c
    instance-of v0, v3, Ljava/lang/OutOfMemoryError;

    invoke-static {v3, v15, v9, v10, v0}, Lc/e/a/f;->a(Ljava/lang/Throwable;Ljava/lang/String;JZ)Ljava/lang/String;

    const-string v12, "generate java report finished"

    invoke-static {v8, v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lc/e/a/c;->e()Z

    move-result v12

    if-nez v12, :cond_3a

    if-eqz v0, :cond_3a

    .line 215
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->I:Z

    if-eqz v0, :cond_3a

    .line 216
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc/e/a/i;->h()Ljava/lang/String;

    move-result-object v12

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_39

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    :cond_39
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v15, "%s%s.hprof"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v12, v4, v18

    const/4 v12, 0x1

    aput-object v0, v4, v12

    move-object v0, v4

    invoke-static {v14, v15, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "begin dump hprof: "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_23

    :try_start_2d
    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_22

    goto :goto_25

    :catchall_22
    move-exception v0

    move-object v12, v0

    const/4 v4, 0x0

    .line 217
    :try_start_2e
    invoke-static {v12, v4}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 218
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "end dump hprof, use "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v14, v19, v14

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_23

    goto :goto_26

    :catchall_23
    move-exception v0

    goto/16 :goto_2c

    :cond_3a
    :goto_26
    const-wide/16 v4, 0x0

    cmp-long v0, v9, v4

    if-eqz v0, :cond_3b

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_3b

    invoke-static {v9, v10}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_3b
    if-eqz p3, :cond_3c

    .line 219
    :try_start_2f
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_25

    if-eqz v0, :cond_3c

    if-nez v11, :cond_3c

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 220
    :try_start_30
    invoke-static {v4, v5}, Lc/e/a/f;->a(ZZ)Z
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_24

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_28

    :catchall_24
    move-exception v0

    const/4 v9, 0x1

    goto :goto_27

    :catchall_25
    move-exception v0

    const/4 v9, 0x0

    :goto_27
    const/4 v5, 0x0

    .line 221
    invoke-static {v0, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_28

    :cond_3c
    const/4 v5, 0x0

    move v9, v5

    :goto_28
    if-nez v9, :cond_3d

    if-nez v11, :cond_3d

    .line 222
    invoke-static {v5}, Lc/e/a/f;->b(Z)V

    :cond_3d
    :try_start_31
    invoke-static {v5}, Lc/e/a/h;->a(Z)V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_26

    goto :goto_29

    :catchall_26
    move-exception v0

    move-object v8, v0

    .line 223
    invoke-static {v8, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 224
    :goto_29
    :try_start_32
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v9, v0, Lc/e/a/g/b;->G:Z

    .line 225
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_3e

    const/4 v9, 0x1

    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_3f

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_3f

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3f
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_40

    if-nez v11, :cond_40

    .line 226
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 227
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_27

    goto :goto_2a

    :catchall_27
    move-exception v0

    const/4 v2, 0x0

    .line 228
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_40
    :goto_2a
    const/4 v2, 0x1

    .line 229
    sput-boolean v2, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_41

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_41
    return-void

    :catchall_28
    move-exception v0

    const/4 v13, 0x0

    :goto_2b
    const-wide/16 v9, 0x0

    :goto_2c
    :try_start_33
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v14, "exception occurs while java log: "

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lc/e/a/f;->a(Ljava/lang/Throwable;)V

    if-nez v13, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Lc/e/a/f;->a(Ljava/lang/Throwable;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_2d

    :cond_42
    const-wide/16 v12, 0x0

    cmp-long v0, v9, v12

    if-eqz v0, :cond_43

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_43

    invoke-static {v9, v10}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_43
    if-eqz p3, :cond_44

    .line 230
    :try_start_34
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2a

    if-eqz v0, :cond_44

    if-nez v11, :cond_44

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 231
    :try_start_35
    invoke-static {v4, v5}, Lc/e/a/f;->a(ZZ)Z
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_29

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_2e

    :catchall_29
    move-exception v0

    const/4 v9, 0x1

    goto :goto_2d

    :catchall_2a
    move-exception v0

    const/4 v9, 0x0

    :goto_2d
    const/4 v5, 0x0

    .line 232
    invoke-static {v0, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_2e

    :cond_44
    const/4 v5, 0x0

    move v9, v5

    :goto_2e
    if-nez v9, :cond_45

    if-nez v11, :cond_45

    .line 233
    invoke-static {v5}, Lc/e/a/f;->b(Z)V

    :cond_45
    :try_start_36
    invoke-static {v5}, Lc/e/a/h;->a(Z)V
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v0

    move-object v8, v0

    .line 234
    invoke-static {v8, v5}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 235
    :goto_2f
    :try_start_37
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v9, v0, Lc/e/a/g/b;->G:Z

    .line 236
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_46

    const/4 v9, 0x1

    :cond_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_47

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_47

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_47
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_48

    if-nez v11, :cond_48

    .line 237
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 238
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v0

    const/4 v2, 0x0

    .line 239
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_48
    :goto_30
    const/4 v2, 0x1

    .line 240
    sput-boolean v2, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_49

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_49
    return-void

    :catchall_2d
    move-exception v0

    move-object v5, v0

    const-wide/16 v12, 0x0

    cmp-long v0, v9, v12

    if-eqz v0, :cond_4a

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_4a

    invoke-static {v9, v10}, Lcom/uc/crashsdk/JNIBridge;->nativeClientCloseConnection(J)V

    :cond_4a
    if-eqz p3, :cond_4b

    .line 241
    :try_start_38
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v0, v0, Lc/e/a/g/b;->q:Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2f

    if-eqz v0, :cond_4b

    if-nez v11, :cond_4b

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 242
    :try_start_39
    invoke-static {v4, v8}, Lc/e/a/f;->a(ZZ)Z
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2e

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_32

    :catchall_2e
    move-exception v0

    const/4 v9, 0x1

    goto :goto_31

    :catchall_2f
    move-exception v0

    const/4 v9, 0x0

    :goto_31
    const/4 v8, 0x0

    .line 243
    invoke-static {v0, v8}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    goto :goto_32

    :cond_4b
    const/4 v8, 0x0

    move v9, v8

    :goto_32
    if-nez v9, :cond_4c

    if-nez v11, :cond_4c

    .line 244
    invoke-static {v8}, Lc/e/a/f;->b(Z)V

    :cond_4c
    :try_start_3a
    invoke-static {v8}, Lc/e/a/h;->a(Z)V
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_30

    goto :goto_33

    :catchall_30
    move-exception v0

    move-object v9, v0

    .line 245
    invoke-static {v9, v8}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    .line 246
    :goto_33
    :try_start_3b
    sget-object v0, Lc/e/a/i;->a:Lc/e/a/g/b;

    iget-boolean v9, v0, Lc/e/a/g/b;->G:Z

    .line 247
    invoke-static {}, Lc/e/a/a/c;->e()Z

    move-result v0

    if-nez v0, :cond_4d

    const/4 v9, 0x1

    :cond_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_4e

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_4e

    sget-object v0, Lc/e/a/f;->R:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, v2, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4e
    invoke-static {}, Lc/e/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_4f

    if-nez v11, :cond_4f

    .line 248
    sget-object v0, Lc/e/a/a/f;->a:Landroid/content/Context;

    .line 249
    invoke-static {v0}, Lc/e/a/c;->a(Landroid/content/Context;)V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_31

    goto :goto_34

    :catchall_31
    move-exception v0

    const/4 v2, 0x0

    .line 250
    invoke-static {v0, v2}, Lc/e/a/a/f;->a(Ljava/lang/Throwable;Z)V

    :cond_4f
    :goto_34
    const/4 v2, 0x1

    .line 251
    sput-boolean v2, Lc/e/a/f;->S:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-lez v0, :cond_50

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_50
    throw v5
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc/e/a/f;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)V

    return-void
.end method
