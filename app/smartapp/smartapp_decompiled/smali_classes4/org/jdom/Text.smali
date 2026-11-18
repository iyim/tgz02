.class public Lorg/jdom/Text;
.super Lorg/jdom/Content;
.source "Text.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Text.java,v $ $Revision: 1.25 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1 $"

.field static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Lorg/jdom/Text;->setText(Ljava/lang/String;)Lorg/jdom/Text;

    return-void
.end method

.method public static normalizeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 148
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 149
    array-length v0, p0

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_3

    .line 153
    aget-char v6, p0, v3

    const-string v7, " \t\n\r"

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    if-nez v4, :cond_2

    add-int/lit8 v4, v5, 0x1

    const/16 v6, 0x20

    .line 155
    aput-char v6, v0, v5

    move v5, v4

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v5, 0x1

    .line 160
    aget-char v6, p0, v3

    aput-char v6, v0, v5

    move v5, v4

    const/4 v4, 0x0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 167
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v5}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    if-ne p1, v0, :cond_1

    .line 214
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    :goto_0
    return-void

    .line 210
    :cond_2
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public append(Lorg/jdom/Text;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 266
    invoke-super {p0}, Lorg/jdom/Content;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jdom/Text;

    .line 267
    iget-object v1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    iput-object v1, v0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getTextNormalize()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jdom/Text;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextTrim()Ljava/lang/String;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Text;
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    .line 183
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object p0

    .line 187
    :cond_0
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCharacterData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 190
    iput-object p1, p0, Lorg/jdom/Text;->value:Ljava/lang/String;

    return-object p0

    .line 188
    :cond_1
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "character content"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/jdom/Text;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
