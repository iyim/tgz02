.class public Lcom/taobao/phenix/common/UnitedLog;
.super Lcom/taobao/tcommon/log/FLog;
.source "UnitedLog.java"


# static fields
.field private static final FIRST_TAG:Ljava/lang/String; = "RxPhenix"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/taobao/tcommon/log/FLog;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static completeHttpPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 2

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "%%"

    const-string v1, "%"

    if-eqz p2, :cond_0

    const-string p2, "//"

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "http:"

    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?complete=prefix"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 113
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 114
    invoke-static {p2, p1, p0, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 119
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {p1, p0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p2}, Lcom/taobao/tcommon/log/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 107
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 108
    invoke-static {p0, p2, p1, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 167
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 168
    invoke-static {p2, p1, p0, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 173
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {p1, p0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p2}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs ep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    .line 161
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 162
    invoke-static {p0, p2, p1, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs i(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 131
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 132
    invoke-static {p2, p1, p0, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 137
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1, p0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p2}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs ip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    .line 125
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 126
    invoke-static {p0, p2, p1, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private static predictOutputSize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x5

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v0, p0

    :cond_0
    if-eqz p4, :cond_1

    .line 44
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    :cond_1
    if-lez p1, :cond_2

    add-int/lit8 v0, v0, 0xb

    :cond_2
    if-eqz p2, :cond_3

    .line 50
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    add-int/2addr v0, p0

    :cond_3
    if-eqz p3, :cond_4

    .line 53
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    add-int/2addr v0, p0

    if-eqz p5, :cond_4

    add-int/lit8 v0, v0, 0x15

    :cond_4
    return v0
.end method

.method private static standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p5}, Lcom/taobao/phenix/common/UnitedLog;->predictOutputSize(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p4, 0x5d

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez p1, :cond_0

    const-string p4, " ID="

    .line 66
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const-string p4, " MODULE="

    .line 69
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-gtz p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x20

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :goto_0
    const-string p1, ", "

    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    const-string p0, ", PATH="

    .line 78
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v0, p3, p5}, Lcom/taobao/phenix/common/UnitedLog;->completeHttpPrefix(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_4
    const/4 p0, 0x0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static standardizing(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/phenix/request/ImageRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p2

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 27
    invoke-static/range {v0 .. v5}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    .line 85
    invoke-static/range {v0 .. v5}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs v(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 95
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 96
    invoke-static {p2, p1, p0, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 101
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p1, p0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p2}, Lcom/taobao/tcommon/log/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs vp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x2

    .line 89
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    invoke-static {p0, p2, p1, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs w(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 149
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 150
    invoke-static {p2, p1, p0, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Lcom/taobao/phenix/request/ImageRequest;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 155
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p1, p0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p2}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs wp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 143
    invoke-static {v0}, Lcom/taobao/phenix/common/UnitedLog;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    invoke-static {p0, p2, p1, v0}, Lcom/taobao/phenix/common/UnitedLog;->standardizing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "RxPhenix"

    invoke-static {p1, p0, p3}, Lcom/taobao/tcommon/log/FLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
