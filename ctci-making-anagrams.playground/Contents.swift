//: Playground - noun: a place where people can play

import UIKit

/*
 We consider two strings to be anagrams of each other if the first string's letters can be rearranged to form the second string. In other words, both strings must contain the same exact letters in the same exact frequency For example, bacdc and dcbac are anagrams, but bacdc and dcbad are not.
 
 Given two strings,  and , that may or may not be of the same length, determine the minimum number of character deletions required to make  and  anagrams. Any characters can be deleted from either of the strings.
 
 Input Format
 
 The first line contains a single string, .
 The second line contains a single string, .

 Constraints
 
 - 1 <= |a|, |b| <= 10^4
 - It is guaranteed that  and  consist of lowercase English alphabetic letters (i.e.,  through ).
 
 Output Format
 
 Print a single integer denoting the number of characters you must delete to make the two strings anagrams of each other.
 
 Sample Input
 
 cde
 abc
 
 Sample Output
 
 4
 
 */

func readLineWithDefault(value : String) -> String {
    
    var v = ""
    if let r = readLine(strippingNewline: true) {
        v = r
    }else{
        v = value
    }
    
    return v
}

//func countCharactersNotExist(a: String, b: String) -> Int {
//    
//    var mB = String(b)!
//    for c in a.characters{
//    
//        
//        //print("\n")
//        let v = String(c)
//        let contains = b.contains(v)
//        if contains{
//        
//            mB = mB.replacingOccurrences(of: v, with: "")
//            
//        }
//        
//        
//        
//    }
//    
//   // print(mB)
//    return mB.characters.count
//    
//}

func countCharactersNotExist(a:String, b:String) -> Int {
    
    var mB = b
    var counter = 0
    
    for index in a.characters.indices {
        if let indexInmB = mB.characters.index(of:a[index]) {
            
            counter += 2
            
            mB.remove(at:indexInmB)
        }
    }
    
    let completeString = a + b
    return completeString.characters.count - counter
}



//let a = readLineWithDefault(value:"zjadbkhmquvpcedlhsarcjzfsnekawczfccjomvfirwkvbveuvvwgwdbkklmgnlorpxgdunmnjwkksoepjdwiixssigbytppioxoikcwtyggsvmigrgoadisnovlhkdsacgjpkhiinqdkdnruvhwyqrngmbozgiziqkxarikfyprdciazswxinnqaogzuoaeglcgcmrjmibqnlqmfmkpczgcnmdjddnjorqtfjesthkgvataofqqewutizendrxtlpoqatktauavwtylyodekaxuzbieuhyhwoayhkrkhrhdmfqmtwqfwpcxsmcntcwrqwpajikqctvobmduivcgleddqfslhreyntaydkqffmwgazdkuhqhltndbfqkyukmpkmswdycrukrvnbpurxhmkmprcaqykenvsgtvgvocgfxvgmqzlzoxmdrofjnqncnfkgdqersmzrhhgzhrzxrlcibirqagtnndvswbkqnlivsoubhvyygdgilzylftatxxlvzxloktldjierdfpkkyuvzuifokanhniinvzxrkcasjrwojiajcvkwfpmprzyhjjwfitwswylfqjvbrvmvswtxogohhmorvkydgwyeullmuipndbixybwojkvrwmkuykxegxicivpedergizfidbwmlrdkfpeezdihbtklobqsfhapjixmjtyxnehsvlyvqjcrcodsptmxcnmlxkxgfydsemnzxlwquzjypmrfhfcmuoxraxygvdyzqnapzxfvypundnsnswznnyenvetqiurahspirxepoacrpxghvfwigdwbjrurlntthldyihnyjqpypygkfevljrntkjmwwgreruebesznkqmzouluagfkzudkfpgexziotorxgqlqjzrxtdttlbdlxivdydhvcrmxffvmwiehjyecbyxobdzylwblzkjdbxbhcyvaibhrzovcosrpxsnlppwqzhudgxmjvjldktumhpqvjhkhczstqqjqafvgchrxsdccyyqfnhczqogsnalesxwsctbfaueuxjwxhpevwguowcjkewqwtorwhsdjojdmsbjasqxowtftvofzkxxenocuihfxqilllwnemkujdzeaplbckygxnktxtyulifwvcjzotwzyxdapqbrcazzpjsmcsjncomyqvzhrvgrvmsketbhvagklbznvicyyqwpmvyftewosqyxkzefzmsmntbjddhbwfskaqptxnhpehmqgqvhdptskubnakpwpjisaxlzmvoqcbglreuwvqpgmsvofkmuwumytaxgxlybmhmgljeibvonoketwqpunesggpmddleputxhcepfzgsnsyiqpalcgdimvxpykvpeoplstcxsiqiaostfsejyjukgrbgdxwhlnuggwdahvijmbcrvidwuxgaqkhtjfcuswaaugadbjnnmrhhakduhmwxydqhkudcsgemmfsnqfbcyilaspwbdtybyqkjknnctsqfxitnpwrqgcqatnbwibzgtlpfzfjsxzawkvlbrcrxekzaxayhdynwjfdkkmfjlffxasbtussaeradtzkyzywkdzxplcywjfwlxxetryvwrwzmxkkykgkpfheqjcoshmfgjlzdjuzasaormypwealljpdttsncgtiqgjtqgusyuhsjhjfojtzvkdoexdidyrvfcqxikpjhydqgmxuyqvtdyjhxmrdnkyunprxbiikhlapyajwsepvfaeemwhbgivvzotaxbngnpvnpgjimafrakyoifsonnkoefrbgehvteilktvwvaqvkomuvejltvzxcqykwhisnqdzmywhyoflerfbxqmqnoorgocdykvlcaloyjyyzdlfwtgtltlzhbsnqusqgpdjpqzpbxqacbfyumtghfhqgzfywyqcpunfknwommorqwrmknutsdjadobbmrfeltlyihmwwcnmahakuvdoyooddrerjkvwfgwnoijmnza")
//let b = readLineWithDefault(value:"ngaacvfquugxxyeqjomftsciimruzswpaxrcswuosbmpbqgkgupbmtjxgcthvqwxnnchmwwexkwyaeiiyajmtujzwfjtvfrkvtrhrplpzjpbnajlauavojxlogglnzviuprmefbeosfcsrpulpqabnnrttdivarpribwnecexjgraxmoneqqrfhmymutnnlgymcnrgrqszhuxvimzacsflggybznqmtozycseviwvrrspbgqcijhtpntspgjbazcyduczebuyuonvudxcofxeuryjxhlzjpxmkcloffoztduphstvzrbvkafjjsjshihtkskpayovclllfeigxkbhmgrxacskkzdvtnmtmdpqocbtgjzevaljjehlgzvrazotmcnafeqtgroodpsaqgkbmtmtuimujcpvecykiofoiudnlxnbdzesutlodzkmdajhehtnwbdgxitiggmliqdclqtordaudmektxxryazxjsgrbsejkilwaeksknopbszuqwoqznqkiwdjohsarfwsmhmwwanxtntlljdmztwhpbqfjkgapeudngzjhnicccnnnsammyvdalljxtlnxgqloswxhfzjjoyyjylvzgabunmrgxggfztwrptawvjhljguktrjbskxhwrovxwdypzpeurdpckbmsxwnpfpjroqpfgkdcnbtotajmdyppbbkzxxqeozxdrmiayneorycmynydonspqcqpcitqhstbeebftftkdxydlxgzmzqddjufroybitcnxfurmndsmcvzbcandrsganotdmulhyaffuysjdkyffxgjywmpqvrdlmizhwghwnntnherrcyyahkydypvvibgujhdfonedazrjdkagiagpkgulvqgfrnbcufkksoqunhdqrfybheruklfhdlowaqzxxjjpzzloiqgbxfdglwayjhhnvwjxokwlvgcwhnksftvcaaklwlliutvrrgpftlqotsldhxxmqsq")


let a = readLineWithDefault(value:"cde")
let b = readLineWithDefault(value:"abc")

print(countCharactersNotExist(a: a, b: b))
