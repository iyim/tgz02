.class public Lorg/jdom/Comment;
.super Lorg/jdom/Content;
.source "Comment.java"


# static fields
.field private static final CVS_ID:Ljava/lang/String; = "@(#) $RCSfile: Comment.java,v $ $Revision: 1.33 $ $Date: 2007/11/10 05:28:58 $ $Name: jdom_1_1 $"


# instance fields
.field protected text:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lorg/jdom/Content;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lorg/jdom/Comment;->setText(Ljava/lang/String;)Lorg/jdom/Comment;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jdom/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/jdom/Comment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lorg/jdom/Comment;
    .locals 3

    .line 119
    invoke-static {p1}, Lorg/jdom/Verifier;->checkCommentData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    iput-object p1, p0, Lorg/jdom/Comment;->text:Ljava/lang/String;

    return-object p0

    .line 120
    :cond_0
    new-instance v1, Lorg/jdom/IllegalDataException;

    const-string v2, "comment"

    invoke-direct {v1, p1, v2, v0}, Lorg/jdom/IllegalDataException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Comment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/jdom/output/XMLOutputter;

    invoke-direct {v1}, Lorg/jdom/output/XMLOutputter;-><init>()V

    invoke-virtual {v1, p0}, Lorg/jdom/output/XMLOutputter;->outputString(Lorg/jdom/Comment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
